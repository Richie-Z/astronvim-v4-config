-- Customize Treesitter
---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- disable the auto install duhhh
    opts.auto_install = false
  end,
}
