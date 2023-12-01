-- return {
--     {
--         "lukas-reineke/indent-blankline.nvim",
--         main = "ibl", opts = {}
--     }
-- }

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    --event = "LazyFile",		--报错
    main = "ibl",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
  },
}

