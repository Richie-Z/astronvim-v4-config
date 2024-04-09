-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {
  -- == Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  { "christoomey/vim-tmux-navigator", lazy = false },
  { "easymotion/vim-easymotion", event = "User AstroFile" },
  { "mg979/vim-visual-multi", event = "User AstroFile" },

  -- == Overriding Plugins ==
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "______ _      _     _           ______",
        "| ___ (_)    | |   (_)         |___  /",
        "| |_/ /_  ___| |__  _  ___ ______ / / ",
        "|    /| |/ __| '_ \\| |/ _ \\______/ /  ",
        "| |\\ \\| | (__| | | | |  __/    ./ /___",
        "\\_| \\_|_|\\___|_| |_|_|\\___|    \\_____/",
      }
      return opts
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}
