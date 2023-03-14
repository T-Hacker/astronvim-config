return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                no_italic = true,
                integrations = {
                    neotree = true,
                },
            })
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        after = { "mason-lspconfig.nvim" },
        name = "rust-tools",
    },
}
