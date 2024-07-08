-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
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
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
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
