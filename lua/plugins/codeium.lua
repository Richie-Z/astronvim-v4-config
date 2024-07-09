---@type LazySpec
return {
  "Exafunction/codeium.vim",
  event = "User AstroFile",
  -- commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
  config = function()
    local opts = { expr = true, silent = true }
    vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, opts)
    vim.keymap.set("i", "<C-u>", function() return vim.fn["codeium#CycleCompletions"](1) end, opts)
    vim.keymap.set("i", "<C-i>", function() return vim.fn["codeium#CycleCompletions"](-1) end, opts)
    vim.keymap.set("i", "<C-x>", function() return vim.fn["codeium#Clear"]() end, opts)

    vim.keymap.set("n", "<Leader>;", function()
      if vim.g.codeium_enabled == true then
        vim.cmd "CodeiumDisable"
        print "Codeium Disabled"
      else
        vim.cmd "CodeiumEnable"
        print "Codeium Enabled"
      end
    end, { noremap = true, desc = "Toggle Codeium active" })
  end,
}
