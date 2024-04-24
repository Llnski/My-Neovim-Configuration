-- settings/servers.lua
local lspconfig = require("lspconfig")

local mason = require('mason')
local masonlspconfig = require('masonlspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').rust_analyzer.setup {
  capabilities = capabilities,
    -- other lspconfig configs
}

-- $ rustup component add rust-analyzer
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  cmd = { "rustup", "run", "stable", "rust-analyzer" },
})


lspconfig.clangd.setup({
  capabilities = capabilities
})


lspconfig.lua_ls.setup({
  capabilities = capabilities
})

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

