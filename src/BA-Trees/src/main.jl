using DelimitedFiles
using Random
using CSV
using DataFrames
using Statistics

"""
Calculate the mode (most frequent value) of an array.

# Arguments
- `x`: An array of elements for which the mode is to be calculated.

# Returns
- The mode of the array, which is the first most frequent value in case of ties.

# Throws
- `ArgumentError`: If the input array is empty.
"""
function mode(x)
    if isempty(x)
        throw(ArgumentError("array must be non-empty"))
    end

    # Count occurrences of each value
    counts = Dict{eltype(x),Int}()
    for val in x
        counts[val] = get(counts, val, 0) + 1
    end

    # Find value with maximum count
    max_count = maximum(values(counts))
    modes = [k for (k, v) in counts if v == max_count]

    # Return first modal value (in case of multi-modality)
    return first(modes)
end

"""
Convert an input feature to a numeric value.

# Arguments
- `x`: The feature to be converted, which can be a number, string, or symbol.

# Returns
- A `Float64` representation of the input feature.
"""
function convert_feature(x)
    if x isa Number
        return Float64(x)
    elseif x isa String || x isa Symbol
        # For strings/symbols, convert to a numeric index
        return 1.0  # Simplified for this example
    else
        return Float64(x)
    end
end

"""
Get the majority class from an array of target values.

# Arguments
- `targets::AbstractArray`: An array of target values.

# Returns
- The majority class as an integer.
"""
function get_majority_class(targets)
    if isempty(targets)
        return 0
    end
    targets_int = convert(Vector{Int}, targets)
    return mode(targets_int)
end

"""
Prepare dataset for analysis by converting features and targets to numeric values.

# Arguments
- `dataset::AbstractArray`: The dataset to be processed.

# Returns
- Tuple of numeric data matrix and target vector.
"""
function prepare_dataset(dataset)
    n_features = size(dataset, 2) - 1
    n_samples = size(dataset, 1)

    # Convert all features to numbers
    numeric_data = zeros(Float64, n_samples, n_features)
    for i = 1:n_features
        numeric_data[:, i] = map(x -> convert_feature(x), dataset[:, i])
    end

    # Convert target classes to 0-based indices
    unique_classes = unique(dataset[:, end])
    class_map = Dict(class => i - 1 for (i, class) in enumerate(unique_classes))
    targets = [class_map[x] for x in dataset[:, end]]

    return numeric_data, convert(Vector{Int}, targets)
end

"""
Create a decision tree node with random splits.

# Arguments
- `data`: Dataset matrix
- `targets`: Target vector
- `depth`: Current depth
- `max_depth`: Maximum allowed depth
- `min_samples`: Minimum samples for split
- `node_id`: Current node ID

# Returns
- Array of strings representing tree nodes
"""
function create_tree_node(
    data,
    targets,
    depth = 0,
    max_depth = 3,
    min_samples = 5,
    node_id = 0,
)
    nodes = String[]
    n_samples, n_features = size(data)

    # Stop conditions
    if depth >= max_depth || n_samples < min_samples
        majority_class = get_majority_class(targets)
        push!(nodes, "$node_id LN -1 -1 -1 -1 $depth $majority_class")
        return nodes
    end

    # Select feature and threshold randomly
    feature = rand(0:(n_features-1))
    feature_values = data[:, feature+1]
    if length(unique(feature_values)) > 1
        threshold =
            rand() * (maximum(feature_values) - minimum(feature_values)) +
            minimum(feature_values)
    else
        threshold = feature_values[1]
    end

    # Split data
    left_mask = feature_values .<= threshold
    if !any(left_mask) || all(left_mask)
        majority_class = get_majority_class(targets)
        push!(nodes, "$node_id LN -1 -1 -1 -1 $depth $majority_class")
        return nodes
    end

    # Create child nodes
    left_child = node_id + 1
    left_subtree = create_tree_node(
        data[left_mask, :],
        targets[left_mask],
        depth + 1,
        max_depth,
        min_samples,
        left_child,
    )
    right_child = left_child + length(left_subtree)
    right_subtree = create_tree_node(
        data[.!left_mask, :],
        targets[.!left_mask],
        depth + 1,
        max_depth,
        min_samples,
        right_child,
    )

    # Add current node
    push!(
        nodes,
        "$node_id IN $left_child $right_child $feature $(round(threshold, digits=3)) $depth -1",
    )

    # Combine all nodes
    append!(nodes, left_subtree)
    append!(nodes, right_subtree)

    return nodes
end

"""
Create random forest input content.

# Arguments
- `dataset`: Input dataset
- `num_trees`: Number of trees to generate
- `max_depth`: Maximum tree depth

# Returns
- Formatted string for random forest input
"""
function create_random_forest_input(dataset, num_trees = 10, max_depth = 3)
    data, targets = prepare_dataset(dataset)
    n_features = size(data, 2)
    n_classes = length(unique(targets))

    lines = String[]
    push!(lines, "DATASET_NAME: dataset.train.csv")
    push!(lines, "ENSEMBLE: RF")
    push!(lines, "NB_TREES: $num_trees")
    push!(lines, "NB_FEATURES: $n_features")
    push!(lines, "NB_CLASSES: $n_classes")
    push!(lines, "MAX_TREE_DEPTH: $max_depth")
    push!(
        lines,
        "Format: node / node type (LN - leave node, IN - internal node) left child / right child / feature / threshold / node_depth / majority class (starts with index 0)",
    )
    push!(lines, "")

    for tree_idx = 0:(num_trees-1)
        sample_indices = rand(1:size(data, 1), size(data, 1))
        bootstrap_data = data[sample_indices, :]
        bootstrap_targets = targets[sample_indices]

        push!(lines, "[TREE $tree_idx]")
        tree_nodes = create_tree_node(bootstrap_data, bootstrap_targets, 0, max_depth)
        push!(lines, "NB_NODES: $(length(tree_nodes))")
        append!(lines, tree_nodes)
        push!(lines, "")
    end

    return join(lines, "\n")
end

"""
Prepare and run BA-Trees algorithm.

# Arguments
- `dataset_name`: Name of dataset file
- `num_trees`: Number of trees to generate
- `max_depth`: Maximum tree depth
"""
function prepare_and_run_ba_trees(; dataset_name = "iris", num_trees = 4, max_depth = 3)
    base_dir = pwd()
    dataset_path = joinpath(base_dir, "src", dataset_name * ".csv")
    @show dataset_path

    if !isfile(dataset_path)
        println("ERROR: Dataset file not found: $dataset_path")
        println("Current directory: ", pwd())
        println("Content of src directory:")
        if isdir("src")
            for file in readdir("src")
                println(" - $file")
            end
        else
            println("The 'src' directory doesn't exist!")
        end
        return
    end

    dataset = DataFrame(CSV.File(dataset_path))

    temp_dir = "temp_ba_trees"
    isdir(temp_dir) || mkdir(temp_dir)

    input_file = joinpath(temp_dir, "forest.txt")
    output_base = joinpath(temp_dir, "result.txt")
    output_stats = output_base * ".out"
    output_tree = output_base * ".tree"

    executable_path = joinpath(base_dir, "src", "bornAgain")

    try
        println("Generating random forest...")
        forest_content = create_random_forest_input(dataset, num_trees, max_depth)
        write(input_file, forest_content)

        cmd = `$executable_path $input_file $output_base -trees $num_trees -obj 4`
        println("Executing command: ", cmd)
        run(cmd)

        if isfile(output_stats)
            println("\nBorn-Again Tree Analysis Results:")
            println(read(output_stats, String))
            
            if isfile(output_tree)
                println("\nBorn-Again Tree Structure:")
                println(read(output_tree, String))
            else
                println("Tree structure file not found: $output_tree")
            end
        else
            println("Statistics file not found: $output_stats")
        end

    catch e
        println("\nError during execution:")
        println(e)
        println("\nDebug information:")
        println("Current directory: ", pwd())
        println("Executable exists? ", isfile(executable_path))
        println("Temporary directory contents:")
        for (root, dirs, files) in walkdir(temp_dir)
            println("Files: ", join(files, ", "))
        end
        if isfile(input_file)
            println("\nFirst 10 lines of input file:")
            println(join(collect(Iterators.take(eachline(input_file), 10)), "\n"))
        end
    finally
        if !@isdefined(e)
            #rm(temp_dir, recursive = true, force = true)
        end
    end
end

"""
Display BA-Trees analysis results.

# Arguments
- `output_file`: Path to output file
"""
function display_results(output_file)
    output_file = endswith(output_file, ".out") ? output_file : output_file * ".out"
    
    if isfile(output_file)
        println("\nBorn-Again Tree Analysis:")
        println("-"^40)
        for line in eachline(output_file)
            if startswith(line, "TIME") ||
               startswith(line, "DEPTH") ||
               startswith(line, "LEAVES") ||
               startswith(line, "ACCURACY")
                parts = split(line, ":")
                if length(parts) == 2
                    key = rpad(strip(parts[1]), 20)
                    value = strip(parts[2])
                    println("$key: $value")
                end
            end
        end
        println("-"^40)
    end
end

# Main execution
function main()
    println("Born-Again Tree Analysis")
    println("="^30)

    # Configurable parameters
    dataset_name = "iris"
    num_trees = 4
    max_depth = 3

    println("Dataset: $dataset_name")
    println("Number of trees: $num_trees")
    println("Maximum depth: $max_depth")
    println("="^30)

    # Run analysis
    prepare_and_run_ba_trees(
        dataset_name = dataset_name,
        num_trees = num_trees,
        max_depth = max_depth,
    )
end


using DecisionTree
using DataFrames

"""
Node structure for BA-Trees format
"""
struct BANode
    id::Int
    node_type::String  # "IN" or "LN"
    left_child::Int
    right_child::Int
    feature::Int
    threshold::Float64
    depth::Int
    class::Int
end

"""
Parse a BA-Trees node line into a BANode struct

# Arguments
- `line::String`: A line from the BA-Trees output file

# Returns
- `BANode`: Structured representation of the node
"""
function parse_ba_node(line::String)
    parts = split(line)
    return BANode(
        parse(Int, parts[1]),     # id
        parts[2],                 # node_type
        parse(Int, parts[3]),     # left_child
        parse(Int, parts[4]),     # right_child
        parse(Int, parts[5]),     # feature
        parse(Float64, parts[6]), # threshold
        parse(Int, parts[7]),     # depth
        parse(Int, parts[8])      # class
    )
end

"""
Convert BA-Trees node to DecisionTree.jl node recursively

# Arguments
- `nodes::Dict{Int,BANode}`: Dictionary of all BA nodes indexed by ID
- `current_id::Int`: ID of the current node to convert
- `features::Vector{String}`: Feature names for the tree

# Returns
- `Node`: DecisionTree.jl node structure
"""
function convert_to_dt_node(nodes::Dict{Int,BANode}, current_id::Int, features::Vector{String})
    node = nodes[current_id]
    
    if node.node_type == "LN"
        # Leaf node
        return Leaf(node.class)
    else
        # Internal node
        feature_name = features[node.feature + 1]  # BA-Trees uses 0-based indexing
        left = convert_to_dt_node(nodes, node.left_child, features)
        right = convert_to_dt_node(nodes, node.right_child, features)
        return Node(feature_name, node.threshold, left, right)
    end
end

"""
Convert BA-Trees format to DecisionTree.jl tree

# Arguments
- `ba_tree_file::String`: Path to the BA-Trees output file
- `features::Vector{String}`: Names of features in the dataset
- `classes::Vector`: Possible class values

# Returns
- `DecisionTreeClassifier`: DecisionTree.jl compatible tree
"""
function convert_ba_to_dt(ba_tree_file::String, features::Vector{String}, classes::Vector)
    # Read and parse BA-Trees nodes
    nodes = Dict{Int,BANode}()
    open(ba_tree_file) do f
        for line in eachline(f)
            # Skip non-node lines
            if !occursin(r"^\d+\s+(IN|LN)", line)
                continue
            end
            node = parse_ba_node(line)
            nodes[node.id] = node
        end
    end

    # Find root node (ID 0)
    root = convert_to_dt_node(nodes, 0, features)
    
    # Create DecisionTreeClassifier
    n_classes = length(classes)
    dt = DecisionTreeClassifier(
        root,
        features,
        classes,
        n_classes
    )
    
    return dt
end

"""
Example usage function to demonstrate the conversion

# Arguments
- `ba_tree_file::String`: Path to the BA-Trees output file
- `dataset::DataFrame`: Original dataset used to create the tree
"""
function demonstrate_conversion(ba_tree_file::String, dataset::DataFrame)
    # Get feature names and classes from dataset
    features = names(dataset)[1:end-1] |> Vector{String}
    classes = unique(dataset[!, end]) |> Vector
    
    # Convert the tree
    dt = convert_ba_to_dt(ba_tree_file, features, classes)
    
    # Print some information about the converted tree
    println("Converted Decision Tree:")
    println("Features: ", dt.features)
    println("Classes: ", dt.classes)
    
    # You can now use the tree for predictions
    # Example: predict on first row of dataset
    x = Array(dataset[1, 1:end-1])
    prediction = DecisionTree.predict(dt, x)
    println("\nPrediction for first row: ", prediction)
    println("Actual class: ", dataset[1, end])
    
    return dt
end


# Run the main function
main()
