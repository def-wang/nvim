local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {"html", "cssls", "clangd", "lua_ls", "tsserver"}


for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Without the loop, you would have to manually set up each LSP 
-- 
 lspconfig.ast_grep.setup {
   on_init = on_init,
   on_attach = on_attach,
   capabilities = capabilities,
 }
--
-- lspconfig.cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }