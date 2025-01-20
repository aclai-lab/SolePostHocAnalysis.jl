include("slices-static.jl")
include("slices-temporal.jl")

inner = Dict([
    "B1-rantic" => (false,
        ("/home/lele7x/results9/evolutionary-rule-extraction/pruning-ensemble/models_cache/B1-rantic-static/model_9582925acc4ca81879dbb4598da699194b5c8a685cab30ddb61602e71ecc9c18.jld2",
            [1, 2, 3, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 28, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 42, 46, 48, 49, 50, 51, 53, 55, 57, 58, 59, 60, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 77, 79, 81, 83, 84, 85, 86, 87, 88, 89, 91, 93, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 106, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 129, 130, 131, 133, 134, 135, 138, 139, 140, 141, 142, 143, 144, 145, 146, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 163, 164, 166, 167, 168, 169, 170, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 197, 199, 200, 201, 203, 204, 206, 207, 208, 209, 210, 211, 212, 213, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 226, 227, 230, 231, 232, 235, 236, 237, 238, 239, 241, 242, 243, 244, 245, 246, 247, 248, 250, 251, 253, 254, 255, 257, 261, 262, 264, 265, 266, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 296, 298, 299, 300, 302, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 316, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 330, 331, 332, 333, 334, 335, 337, 339, 340, 343, 344, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 363, 365, 366, 367, 369, 370, 371, 373, 374, 375, 376, 377, 378, 379, 380, 381, 383, 384, 385, 386, 387, 388, 390, 391, 392, 393, 395, 397, 398, 399],
            [4, 7, 24, 25, 26, 27, 29, 34, 41, 43, 44, 45, 47, 52, 54, 56, 61, 62, 75, 76, 78, 80, 82, 90, 92, 94, 105, 107, 128, 132, 136, 137, 147, 148, 161, 162, 165, 171, 196, 198, 202, 205, 214, 225, 228, 229, 233, 234, 240, 249, 252, 256, 258, 259, 260, 263, 267, 294, 295, 297, 301, 303, 314, 315, 317, 329, 336, 338, 341, 342, 345, 362, 364, 368, 372, 382, 389, 394, 396, 400],
        ),
        "/home/lele7x/results9/breast/breast-v1/data_cache/dataset_c5e642cedba753dd6ae6fad7e1f48fd67b043998a4e2b7bc6749c991dbc431aa.jld",
    ),
    "B1-increment" => (false,
        ("/home/lele7x/results9/evolutionary-rule-extraction/pruning-ensemble/models_cache/B1-increment-static/model_7db95af7209aaea3bee1de18defeee63f9a6246be45aca9922fa88bdaba00710.jld2",
            [1, 2, 3, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 28, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 42, 46, 48, 49, 50, 51, 53, 55, 57, 58, 59, 60, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 77, 79, 81, 83, 84, 85, 86, 87, 88, 89, 91, 93, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 106, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 129, 130, 131, 133, 134, 135, 138, 139, 140, 141, 142, 143, 144, 145, 146, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 163, 164, 166, 167, 168, 169, 170, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 197, 199, 200, 201, 203, 204, 206, 207, 208, 209, 210, 211, 212, 213, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 226, 227, 230, 231, 232, 235, 236, 237, 238, 239, 241, 242, 243, 244, 245, 246, 247, 248, 250, 251, 253, 254, 255, 257, 261, 262, 264, 265, 266, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 296, 298, 299, 300, 302, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 316, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 330, 331, 332, 333, 334, 335, 337, 339, 340, 343, 344, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 363, 365, 366, 367, 369, 370, 371, 373, 374, 375, 376, 377, 378, 379, 380, 381, 383, 384, 385, 386, 387, 388, 390, 391, 392, 393, 395, 397, 398, 399],
            [4, 7, 24, 25, 26, 27, 29, 34, 41, 43, 44, 45, 47, 52, 54, 56, 61, 62, 75, 76, 78, 80, 82, 90, 92, 94, 105, 107, 128, 132, 136, 137, 147, 148, 161, 162, 165, 171, 196, 198, 202, 205, 214, 225, 228, 229, 233, 234, 240, 249, 252, 256, 258, 259, 260, 263, 267, 294, 295, 297, 301, 303, 314, 315, 317, 329, 336, 338, 341, 342, 345, 362, 364, 368, 372, 382, 389, 394, 396, 400],
        ),
        "/home/lele7x/results9/breast/breast-v1/data_cache/dataset_c5e642cedba753dd6ae6fad7e1f48fd67b043998a4e2b7bc6749c991dbc431aa.jld",
    ),
    "T1-rantic" => (
        false,
        ("/home/lele7x/results9/evolutionary-rule-extraction/pruning-ensemble/models_cache/T1-rantic-modal/model_f9dca91efa42707f1cf71691682bb9202913823e676f8fc1227a5f4555b28e47.jld2",
        [330, 21, 190, 1, 320, 117, 324, 53, 303, 46, 299, 91, 230, 3, 280, 34, 208, 41, 285, 104, 279, 75, 309, 73, 145, 107, 165, 55, 300, 80, 215, 59, 173, 63, 333, 120, 202, 54, 272, 109, 206, 95, 153, 78, 179, 96, 196, 99, 338, 123, 234, 110, 136, 90, 315, 60, 188, 44, 265, 102, 308, 25, 343, 32, 336, 124, 225, 106, 282, 24, 317, 76, 296, 111, 146, 65, 195, 114, 178, 30, 244, 50, 231, 85, 318, 26, 275, 33, 168, 37, 267, 64, 216, 56, 312, 122, 164, 49, 240, 57, 233, 69, 144, 70, 306, 8, 273, 83, 313, 15, 175, 98, 339, 11, 328, 105, 228, 29, 281, 2, 249, 48, 250, 126, 180, 82, 184, 116, 197, 81, 172, 79, 314, 88, 246, 35, 171, 13, 255, 66, 260, 47, 152, 108, 200, 40, 211, 86, 334, 58, 218, 74, 183, 113, 157, 92, 205, 62, 326, 7, 186, 28, 245, 121, 156, 115, 139, 101, 129, 72, 274, 17, 161, 31, 337, 118, 288, 125, 302, 42, 327, 6, 294, 5, 278, 18, 220, 89, 254, 4, 235, 97, 322, 27, 332, 16, 193, 77, 224, 112, 204, 61],
        [128, 10, 199, 12, 319, 84, 226, 52, 232, 45, 325, 87, 201, 14, 256, 20, 221, 39, 283, 9, 169, 38, 292, 43, 198, 23, 137, 103, 241, 93, 298, 51, 253, 119, 264, 67, 258, 100, 287, 71, 304, 36, 321, 19, 236, 94, 148, 68, 151, 22],
        ),
        "/home/lele7x/results9/covid/rule-extraction-v10/data_cache/dataset_658a6829fd5bf8b57bf4bd69c336935301a01c90426cdd56362b941eebe9804a.jld"
    ),
    "T1-increment" => (
        false,
        ("/home/lele7x/results9/evolutionary-rule-extraction/pruning-ensemble/models_cache/T1-increment-modal/model_34c310393f83a4068b8540f8f3cece231662cd352a7972fcc65f5d3b6a3558d4.jld2",
        [330, 21, 190, 1, 320, 117, 324, 53, 303, 46, 299, 91, 230, 3, 280, 34, 208, 41, 285, 104, 279, 75, 309, 73, 145, 107, 165, 55, 300, 80, 215, 59, 173, 63, 333, 120, 202, 54, 272, 109, 206, 95, 153, 78, 179, 96, 196, 99, 338, 123, 234, 110, 136, 90, 315, 60, 188, 44, 265, 102, 308, 25, 343, 32, 336, 124, 225, 106, 282, 24, 317, 76, 296, 111, 146, 65, 195, 114, 178, 30, 244, 50, 231, 85, 318, 26, 275, 33, 168, 37, 267, 64, 216, 56, 312, 122, 164, 49, 240, 57, 233, 69, 144, 70, 306, 8, 273, 83, 313, 15, 175, 98, 339, 11, 328, 105, 228, 29, 281, 2, 249, 48, 250, 126, 180, 82, 184, 116, 197, 81, 172, 79, 314, 88, 246, 35, 171, 13, 255, 66, 260, 47, 152, 108, 200, 40, 211, 86, 334, 58, 218, 74, 183, 113, 157, 92, 205, 62, 326, 7, 186, 28, 245, 121, 156, 115, 139, 101, 129, 72, 274, 17, 161, 31, 337, 118, 288, 125, 302, 42, 327, 6, 294, 5, 278, 18, 220, 89, 254, 4, 235, 97, 322, 27, 332, 16, 193, 77, 224, 112, 204, 61],
        [128, 10, 199, 12, 319, 84, 226, 52, 232, 45, 325, 87, 201, 14, 256, 20, 221, 39, 283, 9, 169, 38, 292, 43, 198, 23, 137, 103, 241, 93, 298, 51, 253, 119, 264, 67, 258, 100, 287, 71, 304, 36, 321, 19, 236, 94, 148, 68, 151, 22],
        ),
        "/home/lele7x/results9/covid/rule-extraction-v10/data_cache/dataset_658a6829fd5bf8b57bf4bd69c336935301a01c90426cdd56362b941eebe9804a.jld"
    )
])
