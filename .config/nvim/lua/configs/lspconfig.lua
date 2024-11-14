-- EXAMPLE
local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults()

local servers = {
  "vimls",
  "html",
  "cssls",
  "lua_ls",
  "pyright",
  "clangd",
  "dockerls",
  "marksman",
  "rust_analyzer",
  "svelte",
  "eslint",
  "tailwindcss",
  "biome",
  "bashls",
}

-- Lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- require("typescript-tools").setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   settings = {
--     tsserver_max_memory = "500"
--   }
-- }
