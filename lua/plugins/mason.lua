---@type LazySpec
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {})
      local lspconfig = require "lspconfig"
      lspconfig.emmet_ls.setup {
        filetypes = {
          "blade",
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "svelte",
          "pug",
          "typescriptreact",
          "vue",
        },
      }
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts) opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {}) end,
  },
}
