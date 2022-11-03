local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspcfg = require "lspconfig"
local servers = { "gopls" }

for _,lsp in ipairs(servers) do
  lspcfg[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
