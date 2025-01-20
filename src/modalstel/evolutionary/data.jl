include("slices-static.jl")
include("slices-temporal.jl")

inner = Dict([
    "T1" => (false, [
            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_7eba267be16f3da0e042d0ae910c35ceb7aa14699c9149503709481e3ed9d270.jld",T1_static_slices[1][2][1],T1_static_slices[1][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_8ee4be887b53425e538d2778ffb93bff3e695ffff9b8c73d37cdf88aff9bb4fe.jld",T1_static_slices[2][2][1],T1_static_slices[2][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_20f698dfccfdbb48599656462483136a68d8254c2ce0126ee19304ec7711ac29.jld",T1_static_slices[3][2][1],T1_static_slices[3][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_60c49f69976f92ae8d2bc9dc111e9e98363412afa666a075c85706511af1a3f6.jld",T1_static_slices[4][2][1],T1_static_slices[4][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_1eb69a0d55070a79b2ead91507c559a8d74f8c393aaf02aabb45e49ef609658a.jld",T1_static_slices[5][2][1],T1_static_slices[5][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_94f8736abf08ea4b78871fa90c741bd235934f825fc72bb4616a9cd501f83fe0.jld",T1_static_slices[6][2][1],T1_static_slices[6][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_13b2523d380b6c3e898aaaf2ef650ed027ae4903936ab38d98eac25b3142d6c8.jld",T1_static_slices[7][2][1],T1_static_slices[7][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_5e7177b3ac5ca6192fc0c657d41ed0108e30fd1ef8e6b30fbc94985457eefc76.jld",T1_static_slices[8][2][1],T1_static_slices[8][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_3760e347dbd12995e9e15bcc8d0f89c9cf840364b76ba29ee8a21e8c6c242757.jld",T1_static_slices[9][2][1],T1_static_slices[9][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_c3b1506da38081c934a72ca9fc44eac4498ec4aef220c32f8733f585c9895d33.jld",T1_static_slices[10][2][1],T1_static_slices[10][2][2]),
        ],[
            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_afe0f4d85d87ee13f260c5dd9fa0727a5c6b1fce3ddd61ad28656fd5ee130811.jld",T1_temporal_slices[1][2][1],T1_temporal_slices[1][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_b188d1f73a746dcf0d4f3d6aae5f458605c69245e90cb35f2e8412cbb7d629df.jld",T1_temporal_slices[2][2][1],T1_temporal_slices[2][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_6dff49cb13ff341a8b0c3278309bce47b07c7cd2f745fa1e6d9d4ccc10d84134.jld",T1_temporal_slices[3][2][1],T1_temporal_slices[3][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_68b5c55ed4a809efc4904a81ed4edb5bd14df7cebe8218e08e3761e10463dc1e.jld",T1_temporal_slices[4][2][1],T1_temporal_slices[4][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_0dd46418895d306fd2b08afc2a4b938862bd0467f2f766e3a6b05d843edec9d4.jld",T1_temporal_slices[5][2][1],T1_temporal_slices[5][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_e132c147fb508b004e2674c72d34b7b8b752bf59c34b2a5afdc73590c7177850.jld",T1_temporal_slices[6][2][1],T1_temporal_slices[6][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_8c693dead8e472cf8389f34caf6ebc189273e8af51544c062d5e88394ddb6bf9.jld",T1_temporal_slices[7][2][1],T1_temporal_slices[7][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_c46eab07adcdbc08ccd19ec24ab335f16f2f07c0f86996155db5f531b3d23958.jld",T1_temporal_slices[8][2][1],T1_temporal_slices[8][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_00beba52735b631327eafc343aa6e21d8a941a03eb3c6a964aaad5a3dbf6e531.jld",T1_temporal_slices[9][2][1],T1_temporal_slices[9][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_4ae078c1704c105e81b13ad16a0e4ef39fde1cbfed80c854f9c435477cc9a2be.jld",T1_temporal_slices[10][2][1],T1_temporal_slices[10][2][2]),
        ],
        "/home/lele7x/results/covid/rule-extraction-v6/data_cache/dataset_2d08fbaf62fb9ee90d6ddc87cf04997a665cc700fe39f285a5b27f36d1eb9ff6.jld",
        #"/home/lele7x/results/covid/rule-extraction-v7/data_cache/dataset_2d08fbaf62fb9ee90d6ddc87cf04997a665cc700fe39f285a5b27f36d1eb9ff6.jld",
    ),
    "T2" => (false, [
            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_0ad14c2dc7028e94e727b9ceef5eeb1b01ceef90999fef1b03fca533e553636f.jld",T2_static_slices[1][2][1],T2_static_slices[1][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_ebaa03f606241b17fa21734e177b18615e55a0471908c69e37b8f9b241244b0e.jld",T2_static_slices[2][2][1],T2_static_slices[2][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_6e11c328ea742a1ea5815873a98c4dccd9b67ababce4142a9ba80d591508ca52.jld",T2_static_slices[3][2][1],T2_static_slices[3][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_e1200c6513c76730c27c6c22f33fa7de28eea1bbc4ad5b0b40574129152480fa.jld",T2_static_slices[4][2][1],T2_static_slices[4][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_312b2473242d862eba473117d5c328c7f1380dc3439e78d717ea063fa61838e1.jld",T2_static_slices[5][2][1],T2_static_slices[5][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_20aa0b55aa22f131f01d73798e9fc013c4d3d123bd278c7a815f1fde621cf866.jld",T2_static_slices[6][2][1],T2_static_slices[6][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_9891921d4d003a08a58bcbe8b4c58995b79dfbcc8cd01d3495edb9f620307191.jld",T2_static_slices[7][2][1],T2_static_slices[7][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_f9bc2139ad845a2ef90a46046d8ed3bcad4515d10a56d51c9b4e95d1e4452a55.jld",T2_static_slices[8][2][1],T2_static_slices[8][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_5ba3aa7aed2c4d58257f82ef92ddc12caf0c43ac4166f2223a2aa148fcc6d1fe.jld",T2_static_slices[9][2][1],T2_static_slices[9][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_1d88130dffe7b53977beaf68c8a00e6059e215ffa0309a62d38575653ef3a2e7.jld",T2_static_slices[10][2][1],T2_static_slices[10][2][2]),
        ],[
            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_3ba064cb43a28e0e6e7747aae0d8cb311cf404854e1e5b56c0e6ac9dfa0a07be.jld",T2_temporal_slices[1][2][1],T2_temporal_slices[1][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_91c368a1a67a1c7c18216b03fcd14455470e835d1ceba74ef7cb5fb0cbcd7245.jld",T2_temporal_slices[2][2][1],T2_temporal_slices[2][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_ed9308d77aeaecda0580d4f8babe5c29bb4c0638846b6a3defa4d5cb71ee3e37.jld",T2_temporal_slices[3][2][1],T2_temporal_slices[3][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_fd9d3818043aa94043527b4cb027669e0f58f6787bc815d4e418669b4669f03a.jld",T2_temporal_slices[4][2][1],T2_temporal_slices[4][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_1e5684c96e6294d5c4c336792eda610075ea65c46a55b0b59ca97cb396cd91ca.jld",T2_temporal_slices[5][2][1],T2_temporal_slices[5][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_23e90db18893f27e048a45789badf271b05af248e5307c201d1372ad6dcae758.jld",T2_temporal_slices[6][2][1],T2_temporal_slices[6][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_25a77aeb4c1898f5ac2d2b4d7f282595729b4023ea077d4e0163363428bed43d.jld",T2_temporal_slices[7][2][1],T2_temporal_slices[7][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_7b4f9108023e0532df56552deb8d33cc853521cfd655590e06b5523db4fa0e6e.jld",T2_temporal_slices[8][2][1],T2_temporal_slices[8][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_120f32494ede38a0acb86a3f13347d5f44e00485fa58f3d8654b30c52ab8b23e.jld",T2_temporal_slices[9][2][1],T2_temporal_slices[9][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_bcfe8f790ee6e6fe8fd0071053b458c9cae942d254bd696a0b3d619ddeca93f6.jld",T2_temporal_slices[10][2][1],T2_temporal_slices[10][2][2]),
        ],
        "/home/lele7x/results/covid/rule-extraction-v6/data_cache/dataset_27c95de47cbfbe7421bf853b4dc2adcad75c889ea350f8486256f74154fd1947.jld",
        #"/home/lele7x/results/covid/rule-extraction-v7/data_cache/dataset_27c95de47cbfbe7421bf853b4dc2adcad75c889ea350f8486256f74154fd1947.jld",
    ),
    "T3" => (false, [
            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_b5422fe1d4bb76811c0bc49d445d3a889a4134d0bc22c91fb97df554732013ab.jld",T3_static_slices[1][2][1],T3_static_slices[1][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_c311d0bb20d14a6301bc513aa5298e50ea81c28bd5ebbeab17aa81f9cf656211.jld",T3_static_slices[2][2][1],T3_static_slices[2][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_81c6cceaddd33344d1f53636e173c028648348ae756cab68c439eaacd95a65b8.jld",T3_static_slices[3][2][1],T3_static_slices[3][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_7e6aee39af5fb30745a54f64c10b5e335704ad0004d04fb5d130202036f8d2c9.jld",T3_static_slices[4][2][1],T3_static_slices[4][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_6128aa89b34b40e46d3a64bd640840f29133d66812823d756a05cdf1fa2ea41a.jld",T3_static_slices[5][2][1],T3_static_slices[5][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_b8f14cf7ac386a6bd9e82b0418c9a82b45a3cf8877d65d597325499b8e67bd79.jld",T3_static_slices[6][2][1],T3_static_slices[6][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_da63c7644e4ef998a4b25e45ec3f9ab0c9753a3c6de14581ad9458bd83feb4e8.jld",T3_static_slices[7][2][1],T3_static_slices[7][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_05b51f78f3b35f08ead1a973fe4a8c1e37f5f401b60b343f1213f344f71921fd.jld",T3_static_slices[8][2][1],T3_static_slices[8][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_3213ef81877c5f7cc5f2d44556f60fd0a9ed6132af3ac61612d9d6d0396da9cf.jld",T3_static_slices[9][2][1],T3_static_slices[9][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v7/models_cache/model_dbaa6a8d128918486f1b413b11408ed06cc4970ef31d1029f46c0238eaae5227.jld",T3_static_slices[10][2][1],T3_static_slices[10][2][2]),
        ],[
            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_9c34a19a01e20eecacda9860e44dab5d007aeb8ba7a7a0fcb5bd9eed40a3607a.jld",T3_temporal_slices[1][2][1],T3_temporal_slices[1][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_16193c34858218272e9ecb7e842375ccc6bb30c1232ef40ca3893d565010f2cb.jld",T3_temporal_slices[2][2][1],T3_temporal_slices[2][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_06845e9ceec57229884e83e0785a0c29ece8e60f2324e733915a14d48e9f392a.jld",T3_temporal_slices[3][2][1],T3_temporal_slices[3][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_5e722e58db3e468b04f5e72cdfce8932b5fc40271a8b500d7a42e2972b3570aa.jld",T3_temporal_slices[4][2][1],T3_temporal_slices[4][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_d5ecf862c9d3e19e4d38756c24ac77e9d3943f0ade12bf299be8c4a909bf26fd.jld",T3_temporal_slices[5][2][1],T3_temporal_slices[5][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_51e2d9ed46a31be484a036f1d17d824ceb51fc58fb176908428182f04c583e1a.jld",T3_temporal_slices[6][2][1],T3_temporal_slices[6][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_c3bb630e6b3c36bace5a696085642d067fadf583f2c19f21540b2fa89fe51675.jld",T3_temporal_slices[7][2][1],T3_temporal_slices[7][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_84ee0119c7b3ff29c011c0a9d94c6d8ccff19994433bf0d0658d5c1b577c74a3.jld",T3_temporal_slices[8][2][1],T3_temporal_slices[8][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_c3745b5d2c33373f749639a6a71d606219b0d3f01c9d1251b676745c5bafc66e.jld",T3_temporal_slices[9][2][1],T3_temporal_slices[9][2][2]),

            ("/home/lele7x/results/covid/rule-extraction-v6/models_cache/model_3270e400bab83f0d42bb76e270b4fb982e69aa3f0c952811b99679287a685ce1.jld",T3_temporal_slices[10][2][1],T3_temporal_slices[10][2][2]),
        ],
        "/home/lele7x/results/covid/rule-extraction-v6/data_cache/dataset_e0874e6ceb63a2909b660e192c76cf0dd327a080ba206d235e93b0fcae0f8e59.jld",
        #"/home/lele7x/results/covid/rule-extraction-v7/data_cache/dataset_e0874e6ceb63a2909b660e192c76cf0dd327a080ba206d235e93b0fcae0f8e59.jld"
    ),
    "S1" => (true, [
            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_cc49edfec0a8c8ec97e07244c8ef0116c8cc9f3f09cf823cba8ee407caaa17dc.jld",S1_static_slices[1][2][1],S1_static_slices[1][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_861b6f60c45c6b29af399e5f47944ddc228ade02d06a15a8b1255f64a07a1eb0.jld",S1_static_slices[2][2][1],S1_static_slices[2][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_5d0491e622e9a01a21f44806a96f9ee7f4855f9b0a6ec571d4c214002e151736.jld",S1_static_slices[3][2][1],S1_static_slices[3][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_a2f226a0bf443813404b0aa5e18460cb67762164cb9171e23e7732c19ced2139.jld",S1_static_slices[4][2][1],S1_static_slices[4][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_37253abb8eb6d2e4b933d21994c13be8b949016c28a87219ec84219ea99f491f.jld",S1_static_slices[5][2][1],S1_static_slices[5][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_8f061c2371ad036b0d8e26eb3b6cede60c7b54b89760abdf04fadb64dd26336a.jld",S1_static_slices[6][2][1],S1_static_slices[6][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_2005069d8df23a5c1e69fc9574cfbdc36e30e4f17fcb4c18470aa976440fd3f9.jld",S1_static_slices[7][2][1],S1_static_slices[7][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_ee06e4110b99a50833f8a96b23113d3e6566761776c11f6836b88a1a67b23e50.jld",S1_static_slices[8][2][1],S1_static_slices[8][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_3888221f595935a9f9f3f2b38d1d6f22825f72dcc4d19d515be745280d5a0c61.jld",S1_static_slices[9][2][1],S1_static_slices[9][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_1d9c185506a8df0218d16a4d1ce7423b1980e6304f3dd2be1bb33c7a9ee1b89d.jld",S1_static_slices[10][2][1],S1_static_slices[10][2][2]),
        ], [
            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_6c9caac95b228a95d103c224d229a20c7e252dacb7b41f24f66f062414d09843.jld",S1_temporal_slices[1][2][1],S1_temporal_slices[1][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_30d4cb6bda6a9ba94d27c6d25edc19540d63b5276848afc4da7b7409be204e2d.jld",S1_temporal_slices[2][2][1],S1_temporal_slices[2][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_829f7dcecea44260d9a4a7c33bfa9e7d2a804db2689b0e58c22a1f2d74fc48d0.jld",S1_temporal_slices[3][2][1],S1_temporal_slices[3][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_84ce998fd85981fd96752a75e1334666bc98e6b6d6c96d54e1ddde11474ae682.jld",S1_temporal_slices[4][2][1],S1_temporal_slices[4][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_d6989264bb498a4045f09b1bd31c7a31a29bc13de68341c37d92f23b25c5d93d.jld",S1_temporal_slices[5][2][1],S1_temporal_slices[5][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_77cd54a11c54cc7747c54f34c3bc5a0769c903c6d23543e9ba87f9c764f824dd.jld",S1_temporal_slices[6][2][1],S1_temporal_slices[6][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_bbf970c227b56a37ed3ac70ad1a8a7440b3b6ebcfa219ccf7f71d626e922a0a1.jld",S1_temporal_slices[7][2][1],S1_temporal_slices[7][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_03e9d6a456564c4251f6732d3a89a1f02999be59b96653c5271db57081e85892.jld",S1_temporal_slices[8][2][1],S1_temporal_slices[8][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_a9e9a446fda0b25c2040f8bd639d8342f2342e4f65a87a95ca1b3a8ebc9845ec.jld",S1_temporal_slices[9][2][1],S1_temporal_slices[9][2][2]),

            ("/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/models_cache/model_cca6caae98a9b01289051d1ea744827b290b8c44150b8f26487f422fd180d211.jld",S1_temporal_slices[10][2][1],S1_temporal_slices[10][2][2]),
        ],
        [
            "/home/lele7x/results/pixel-static-per-evolutionary/dataset/journal-v3-indianpines-with-updownsampling/dataset_9df9512772f77309d625ed26608089f441a8806e7c0982663c74b81322e253de.jld",
            "/home/lele7x/results/pixel/journal-v3-indianpines-with-updownsampling/data_cache/dataset_5c03011cc5238b113861a164bdfde085dbdf0809b3aa69209a6772336c15027e.jld",
        ],
    ),
    "S2" => (true, [
            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_df8c17e8d90937e6c9a817057a5e84f36535b8f01fa85e16d1cc5613e6d0c3eb.jld",S2_static_slices[1][2][1],S2_static_slices[1][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_93cfe55e68e60ab4c9b44772649e3b9bd3f807a1ce41fba1adc0ce6e2f46a1b0.jld",S2_static_slices[2][2][1],S2_static_slices[2][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_5bdd7f0d81b85448b6e2d696ae33c0e59defc309492f75f8bb8be2546eada3cb.jld",S2_static_slices[3][2][1],S2_static_slices[3][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_c266ad1dc2cdeb0f35017ed24e2a2bf18d51373dc8a44923d455358b1c415e72.jld",S2_static_slices[4][2][1],S2_static_slices[4][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_b2dd7323f6697971618d1c8d3fc8184fff932bf6bb18c3c721b7ec55a8b0ca90.jld",S2_static_slices[5][2][1],S2_static_slices[5][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_d8b792fe76940dbbb3e69453b20094f26e92b11deb09def995bace3c0fc7362a.jld",S2_static_slices[6][2][1],S2_static_slices[6][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_639c31f991fde2f9c7e6b8fbbfa19ae5f0eeda22fa523ac37d38caccb971b185.jld",S2_static_slices[7][2][1],S2_static_slices[7][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_7a0e5d59411b01b4e20f8a98c6139f55d33d020bc959740a3f6a017667b6b071.jld",S2_static_slices[8][2][1],S2_static_slices[8][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_b43dab78dddfdba36965d25adcdd281f38555f265c00110f5a43a6a857c3c80a.jld",S2_static_slices[9][2][1],S2_static_slices[9][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_b569e73543cdb999e9ab5907292fb08f9019a91334fb1ae22c7010a84e8f0c8a.jld",S2_static_slices[10][2][1],S2_static_slices[10][2][2]),
        ], [
            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_05f2d21ac852ae4445d1a15fc69f3d8eaca4d8f12b578a773a401d399843ed6d.jld",S2_temporal_slices[1][2][1],S2_temporal_slices[1][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_216db33930a80c6e23a612b89d08f70216e25a25dab102fba843c9ee958bd024.jld",S2_temporal_slices[2][2][1],S2_temporal_slices[2][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_00f57ec04f34560fa3b73fd2d21a4c864f2a33dfe88e3548a25894563a24371a.jld",S2_temporal_slices[3][2][1],S2_temporal_slices[3][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_15719dd4d6e19a029613cbf7a01ba720abda91e4aea20fce5b5260f9bb44c1bd.jld",S2_temporal_slices[4][2][1],S2_temporal_slices[4][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_e5efa5170dd63cb39ed16f7958144c5397cea93696e31694147cf7b27068913d.jld",S2_temporal_slices[5][2][1],S2_temporal_slices[5][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_8ea168592763f8101dd9f390bd302674921f94a6219675ccda054a757c2f460e.jld",S2_temporal_slices[6][2][1],S2_temporal_slices[6][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_a5354d94753c94a7d630a2615d284a88b04be8706ee90b541dfc7b5e38af9fa8.jld",S2_temporal_slices[7][2][1],S2_temporal_slices[7][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_9d71c9c310957782067660864dcb8d2bf3af0242d79e091cbd19a54c7a992648.jld",S2_temporal_slices[8][2][1],S2_temporal_slices[8][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_44142b25a57b5abbf67d3d635d4d98af7d330205d5fa814161bc4cf5d59b3b8a.jld",S2_temporal_slices[9][2][1],S2_temporal_slices[9][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_d9b2ceef3aa393b6e955745bbf6bb25d73052e9a47a6f9d46b3c5527f4d4e9ef.jld",S2_temporal_slices[10][2][1],S2_temporal_slices[10][2][2]),
        ],
        [
            "/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/data_cache/dataset_c01fc52f3eb86f9ece2b09312b5324e580acb15dacea9b73829562eb5e56d75a.jld",
            "/home/lele7x/results/pixel-static-per-evolutionary/dataset/journal-v5-avoidupsamplingleakage/dataset_34c4283a503d7f2b1736ebe41126c0f0b7d8e2e8e0acafd567197f47ea866287",
        ]
    ),
    "S3" => (true, [
            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_93ac7d049508404abe290b7a16da5d355ff5aacb6174fd20d3f051deaaa19fbc.jld",S3_static_slices[1][2][1],S3_static_slices[1][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_2970003cd43eb21ab9bc25fc5e087867974c7d183157884ec2a9238d3643b5d8.jld",S3_static_slices[2][2][1],S3_static_slices[2][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_c98503e867ea19e201a5dc2432023978ff1295200aadf62d4ed67e110ab13385.jld",S3_static_slices[3][2][1],S3_static_slices[3][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_aa73969938751f5eddb49c7ddd3e997300d4e8ecb44a45ee601085294643272c.jld",S3_static_slices[4][2][1],S3_static_slices[4][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_d541d5a55bc6a252d70442077102685b54f6242132cf55c25ad084bf1746e1a3.jld",S3_static_slices[5][2][1],S3_static_slices[5][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_382bda92299da83e6830bbbf2dd11ef277a11f0460b5c44a95398656082cc7bb.jld",S3_static_slices[6][2][1],S3_static_slices[6][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_0a49f4dfe343c593bf0190d7fe8c48133f6ac2a45be16bfac815023759405f41.jld",S3_static_slices[7][2][1],S3_static_slices[7][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_4ca8ee1855d666fca9530c422d5a5f3afb27e408b533efe49ec07baeca1ca457.jld",S3_static_slices[8][2][1],S3_static_slices[8][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_52acb3c3fe75760caff3ea91be8908635efee6372ea1b45279b87cd1e9de20e9.jld",S3_static_slices[9][2][1],S3_static_slices[9][2][2]),

            ("/home/lele7x/results/pixel-static-per-evolutionary/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_a4941d5f8dae45e7581a3512f6e38a8d36c42f10909a21d1fd568e67512beac2.jld",S3_static_slices[10][2][1],S3_static_slices[10][2][2]),
        ], [
            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_dc3f05692483dcb208b35d3b6c599d400e4e4528fc249398d12e4501c5603ec2.jld",S3_temporal_slices[1][2][1],S3_temporal_slices[1][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_ab35ece270ae068594c1036eb2a571803792fc0978fe5a453191018fb575ec1c.jld",S3_temporal_slices[2][2][1],S3_temporal_slices[2][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_00050aa41f45b7f2dea8a1142fd7725889475be14779231c79a1b00fe1c9472d.jld",S3_temporal_slices[3][2][1],S3_temporal_slices[3][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_7bd67bb095e3243c6d475baabb218985d833c5ddb70d314e9967d93daa07950d.jld",S3_temporal_slices[4][2][1],S3_temporal_slices[4][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_fc35d9d83b5f12d24d66daa4b571bf77cfa243e9fc915022d1f68c3490db5a7d.jld",S3_temporal_slices[5][2][1],S3_temporal_slices[5][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_6db6bcac80b42dcbda7a1a61ca833e575422000411296ee2b710f9e9286cbf39.jld",S3_temporal_slices[6][2][1],S3_temporal_slices[6][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_209798e00fbbf5bc62eaec891ea1a67671c8a6d91182815f49c82d0eda6bb01a.jld",S3_temporal_slices[7][2][1],S3_temporal_slices[7][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_e9986427dd8b86696b53face67a6269d1bc001782b8d3967889d38ab8fe47bcb.jld",S3_temporal_slices[8][2][1],S3_temporal_slices[8][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_4012a178df3f5c3212b3f8cd314c6f1f417c48e0da7eb938d18ae4f10d7e8d70.jld",S3_temporal_slices[9][2][1],S3_temporal_slices[9][2][2]),

            ("/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/models_cache/model_7cee28c57050b2e469d25121354381adbef91e8f8df28edd2079fcd99e6df9d8.jld",S3_temporal_slices[10][2][1],S3_temporal_slices[10][2][2]),
        ],
        [
            "/home/lele7x/results/pixel/journal-v5-avoidupsamplingleakage/data_cache/data_cache/dataset_fffc38f4dfdb29bea86b1693e57894aafe66dd24f225323e75ea1ee6dedda95e.jld",
            "/home/lele7x/results/pixel-static-per-evolutionary/dataset/journal-v5-avoidupsamplingleakage/dataset_4f89b5ae18521510bee86e53a912d7e508cabdc4c35bdbeb63081324b2ed2a9b.jld",
        ]
    ),
])

#=inner = Dict([
    "T1" => (false, [
            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_4a09d3e2831d261f75d72d36d7b1e27c97ec27aefa782691b393a27c932b22c7.jld",T1_static_slices[1][2][1],T1_static_slices[1][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_c3510554108c25a1076145260aa2ab5a731c904cf5705dcf6adfcdcfdc81fb82.jld",T1_static_slices[2][2][1],T1_static_slices[2][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_113ad93387694345d9abf6e402f499dfd662cd7677e1ea53532643cab4ad69b7.jld",T1_static_slices[3][2][1],T1_static_slices[3][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_72b17e88bd7f653e779982dbe1de322ccd49dd8234f52973ac2e71add259e6fb.jld",T1_static_slices[4][2][1],T1_static_slices[4][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_8af431b980bfdff506ef1d37e69985089562a89470faa90f85de237ce6bf2691.jld",T1_static_slices[5][2][1],T1_static_slices[5][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_68295403137705e8417aa16a358be10c97fd9529ba7b210aa7a1c0a5db0d90b3.jld",T1_static_slices[6][2][1],T1_static_slices[6][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_a130e1c6ced5fbade0be512bd43deac3ccb96100a9e9282aa5da932b78374152.jld",T1_static_slices[7][2][1],T1_static_slices[7][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_b9bb84582c2f45326518704f2def13cfd07005377a119fea444a6fb15ce95229.jld",T1_static_slices[8][2][1],T1_static_slices[8][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_ce15457c06fc9c72e6370d989418aaeb21aebe4f8a45f78c9ddf39b769d1b466.jld",T1_static_slices[9][2][1],T1_static_slices[9][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_fee5092087ec4e86bd3034fac8a060d7a5f1233362c42d9320c2802a71a8ea87.jld",T1_static_slices[10][2][1],T1_static_slices[10][2][2]),
        ],
        "/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/data_cache/dataset_2d08fbaf62fb9ee90d6ddc87cf04997a665cc700fe39f285a5b27f36d1eb9ff6.jld",
    ),
    "T2" => (false, [
            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_6f91c613d0888f6d949091342145d3c7d42d0f6a3a1052210f583d175119629f.jld",T2_static_slices[1][2][1],T2_static_slices[1][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_ae39f327a7343e5cc9c59781e8c4573ea632761a4735ee9b35c9db2b940df68b.jld",T2_static_slices[2][2][1],T2_static_slices[2][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_9a272158e73fa70536cb532adf9108ed1df9ccaee20b5ac0090d556736400502.jld",T2_static_slices[3][2][1],T2_static_slices[3][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_2accec34c25fca4a36a093fc04df196ce9c89c3e375ccfff490fc5d3dbf782be.jld",T2_static_slices[4][2][1],T2_static_slices[4][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_c373c132fae6343d7f709e4c5cd15e13bf0d25e5ac0aca4af9fcdb4cf3fc5476.jld",T2_static_slices[5][2][1],T2_static_slices[5][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_ea6b623f9f16e11b1a2de08f3c6151494fd64b409241187f1fad47b89fdf9120.jld",T2_static_slices[6][2][1],T2_static_slices[6][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_5776e5b19d9234eb656b3c455cdf26efbb0a61daabed8f55fc4bf4b4d59ac949.jld",T2_static_slices[7][2][1],T2_static_slices[7][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_31b332c08b475d0158375ab142171a38b1b420798250857a5821887121372c9b.jld",T2_static_slices[8][2][1],T2_static_slices[8][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_b3bc16d61683dd6c8ef48f4166841cdcfcc1fc6fd85acd1fc25f2ee20202b464.jld",T2_static_slices[9][2][1],T2_static_slices[9][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_4ca969ee693716ec97d640327ad4880e57fd5df0579a564b06709daece86d4f4.jld",T2_static_slices[10][2][1],T2_static_slices[10][2][2]),
        ],
        "/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/data_cache/dataset_27c95de47cbfbe7421bf853b4dc2adcad75c889ea350f8486256f74154fd1947.jld",
    ),
    "T3" => (false, [
            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_d7b2318bfd8e5b4403034c108cce3be368fddc4aa4c8883aec0b977db7546b87.jld",T3_static_slices[1][2][1],T3_static_slices[1][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_c7bad95988a91dfec1081b8ed540b86e4abe8624130c1f87f8ac5aee53b8afdc.jld",T3_static_slices[2][2][1],T3_static_slices[2][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_19276e7c9f91162505b3f4b58dc63ffcd34aefd5664e487981de2fcc54fcce56.jld",T3_static_slices[3][2][1],T3_static_slices[3][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_ab956fb7c32b15db7c32271964a4c56e4ee1602ffd59c5ed2386d29beb778791.jld",T3_static_slices[4][2][1],T3_static_slices[4][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_4f47e8c257a07ac944e1b71d9de82f6fc7f55c36d4826809e1dff2dce45d5d77.jld",T3_static_slices[5][2][1],T3_static_slices[5][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_27db90fc0acbfbd311368f18172621be803676c982e1f17508e5d826d8d673be.jld",T3_static_slices[6][2][1],T3_static_slices[6][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_3d0a0b7d85c65e642f35e85d9cc033ecea75acae3ad55899c0609162a52d0a23.jld",T3_static_slices[7][2][1],T3_static_slices[7][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_0fd0079a84dfd0519a35d60e8291c099a5fb9adf9cbff9016a50b703e5a80ce7.jld",T3_static_slices[8][2][1],T3_static_slices[8][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_62c406dde32dfd07318c4d6d54da756429de717babbeafec3930e710e6b4babb.jld",T3_static_slices[9][2][1],T3_static_slices[9][2][2]),

            ("/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/models_cache/model_eb58aaccaaa0877f606ab32c41229f7de2ec6188e18106c6ed615fc35bf9834c.jld",T3_static_slices[10][2][1],T3_static_slices[10][2][2]),
        ],
        "/home/lele7x/results/covid/journal-TIME_SERIES-classification-v1/data_cache/dataset_e0874e6ceb63a2909b660e192c76cf0dd327a080ba206d235e93b0fcae0f8e59.jld"
    ),
])=#
