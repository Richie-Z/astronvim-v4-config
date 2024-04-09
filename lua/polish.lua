-- This will run last in the setup process and is a good place to configure

vim.filetype.add {
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}
