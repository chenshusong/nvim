return{
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    build = ":TSUpdate",                --自动更新
    opts = {
        --ensure_installed = "all",      --all为安装所有语言
        ensure_installed = {            --安装部份语言
            "c",
            "lua",
            "vim",
            "html",
            "css",
            "vimdoc",
            "query",
            "python",
            "javascript"
        },
        highlight = {       --开启高亮
            enable = true,
        },
        indent = {          --启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
            enable = true,
        },
        rainbow = {         --设置nvim-ts-rainbow括号不同颜色的配置
            colors = {
                "#ff4500",
                "#ffd700",
                "#179fff",
                "#da70d6",
                "#7fff00",
                "#6c71c4",
                "#ff8dd3",
                "#baacff",
                "#b58900",
                "#86a5ff",
            },
            termcolors = {
                --Term colors here
            },
        },
    },
}
