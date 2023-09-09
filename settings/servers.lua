-- settings/servers.lua
local lspconfig = require("lspconfig")

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

