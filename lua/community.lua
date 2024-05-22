-- AstroCommunity: import any community modules here

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- UI
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.color.tint-nvim" },

  -- Plugins
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.completion.codeium-vim" },

  -- Motions
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.leap-nvim" },

  -- Packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" },
}
