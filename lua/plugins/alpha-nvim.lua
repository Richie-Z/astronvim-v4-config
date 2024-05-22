---@type LazySpec
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
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
}
