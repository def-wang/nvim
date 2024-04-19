return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
   {
     "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },
  -- 管理插件
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "eslint",
        "jsx",
        "typescript"
      },
    },
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "easymotion/vim-easymotion",
    lazy = false,
  },
  -- 语法高亮
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        --other
        "json",
        "python",
        "yaml",
        "java",
        "markdown",
        -- low level
        "c",
        "zig"
      }
    },
  },
}
