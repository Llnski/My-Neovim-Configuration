-- settings/servers.lua
local mason = require('mason').setup()
local masonlspconfig = require('mason-lspconfig').setup()
local lspconfig = require("lspconfig")
local custom_attach = function (client)
  print(client)
end
require('lspconfig.configs').isabelle = {
	default_config = {
		name = 'isabelle',
		cmd = { "isabelle" },
		filetypes = {'isabelle'},
    root_dir = lspconfig.util.root_pattern('.git'),
    single_file_support = true,
	}
}
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.isabelle.setup({
  capabilities = capabilities,
  on_attach = custom_attach
})
lspconfig.eslint.setup({
  capabilities = capabilities,
    root_dir = function()
        return vim.fn.getcwd()
    end,
})
lspconfig.tsserver.setup({
  capabilities = capabilities,
    root_dir = function()
        return vim.fn.getcwd()
    end,
})

lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    root_dir = function()
        return vim.fn.getcwd()
    end,
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
    settings = {
        rust_analyzer = {
            useLibraryCodeForTypes = true,
            autoSearchPaths = true,
            autoImportCompletions = false,
            reportMissingImports = true,
            followImportForHints = true,

            cargo = {
                allFeatures = true,
            },
            checkOnSave = {
                command = "cargo clippy",
            },
        },
    },
})--require('lspconfig').rust_analyzer.setup {
--  capabilities = capabilities,
--    -- other lspconfig configs
--}

-- $ rustup component add rust-analyzer
--lspconfig.rust_analyzer.setup({
--  capabilities = capabilities,
--  cmd = { "rustup", "run", "stable", "rust-analyzer" },
--})


lspconfig.clangd.setup({
  capabilities = capabilities
})
lspconfig.clojure_lsp.setup({
  capabilities = capabilities
})
lspconfig.jedi_language_server.setup({
  capabilities = capabilities
})
lspconfig.lua_ls.setup({
  capabilities = capabilities
})

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

