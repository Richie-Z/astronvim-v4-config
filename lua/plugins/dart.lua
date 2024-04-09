---@type LazySpec
return {
  { import = "astrocommunity.pack.yaml" },
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable: missing-fields
      handlers = { dartls = false },
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    ft = "dart",
    opts = function(_, opts)
      local astrolsp_avail, astrolsp = pcall(require, "astrolsp")
      if astrolsp_avail then opts.lsp = astrolsp.lsp_opts "dartls" end
      opts.debugger = { enabled = true }
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      {
        "jay-babu/mason-nvim-dap.nvim",
        optional = true,
        opts = function(_, opts)
          opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "dart" })
        end,
      },
    },
  },
  -- Add "flutter" extension to "telescope"
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = function() require("telescope").load_extension "flutter" end,
  },
}
