local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- EMMET LSP
lspconfig.emmet_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
  settings = {
    emmet = {
      config = {
        options = {
          outputStyle = "expanded",
        },
      },
    },
  },
}

-- TAILWIND LSP
lspconfig.tailwindCSS.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "javascriptreact", "typescriptreact", "vue" },
}
