return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    require('nvim-treesitter.install').compilers = {'/opt/llvm-15.0_043/bin/clang'}
    local configs = require("nvim-treesitter.configs")
    
    configs.setup({
      ensure_installed = { "rust", "toml", "c", "cpp", "lua", "vim", "vimdoc", "javascript", "html" },
      sync_install = false,
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-Space>",
          node_incremental = "<C-Space>",
          scope_incremental = "<nop>",
          node_decremental = "<Backspace>",
        },
      },
      modules = {},
      ignore_install = {},
    })
  end,
}
