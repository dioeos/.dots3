return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      "rafamadriz/friendly-snippets",
      {
        "L3MON4D3/LuaSnip",
        version = "v2.4.0",
        build = "make install_jsregexp"
      }
    },
    config = function()
      require("blink.cmp").setup({
        keymap = {
          preset = "default",
        },
        sources = {
          default = { "lsp", "path", "snippets", "buffer" },
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "saghen/blink.cmp",
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
        },
      })

      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            hint = { enable = true },
          },
        },
      })

      vim.lsp.config("pyright", {
        capabilities = capabilities,
      })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
    end
  }
}
