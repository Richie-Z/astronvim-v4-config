-- AstroCommunity: import any community modules here

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        transparent_background = true,
        filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
      }
    end,
  },

  { import = "astrocommunity.completion.codeium-vim" },

  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" },

  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.leap-nvim" },

  { import = "astrocommunity.color.tint-nvim" },
}
