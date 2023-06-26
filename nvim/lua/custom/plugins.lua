local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "cpplint",
        "black",
        "ruff",
        "pyright",
        "mypy",
        "deno",
      },
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft= {"python"},
    opts = function ()
      return require  "custom.configs.null-ls"
    end,
  },
}
 return plugins
