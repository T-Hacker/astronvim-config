return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "rust", "json", "toml", "c", "cpp" },
    incremental_selection = {
      enabled = true,
      keymaps = {
        init_selection = "<C-Space>",
        node_incremental = "<C-Space>",
        scope_incremental = "<nop>",
        node_decremental = "<Backspace>",
      }
    },
  },
}
