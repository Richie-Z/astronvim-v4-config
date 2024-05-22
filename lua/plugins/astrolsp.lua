---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    ---@diagnostic disable: missing-fields
    config = {
      eslint = {
        filetypes = {
          "javascript",
          "javascript.jsx",
          "javascriptreact",
          "typescript",
          "typescript.tsx",
          "typescriptreact",
          "vue",
        },
      },
      volar = { filetypes = { "vue" } },
    },
    formatting = {
      async = false,
      timeout_ms = 1000,

      filter = function(client)
        local ignored_clients = { "jsonls", "tsserver", "typescript-tools", "volar" }

        for _, client_name in ipairs(ignored_clients) do
          if client_name == client.name then return false end
        end

        return true
      end,
    },
  },
}
