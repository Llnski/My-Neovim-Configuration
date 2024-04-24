
local spec = {
  'mrcjkb/rustaceanvim',
  enabled = false,
  version = '^4', -- Recommended
  lazy = false, -- This plugin is already lazy
  ft = {'rust'}
}

function spec:config()
local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n",
  "T",
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "n",
  "t",
  function()
    vim.cmd.RustLsp{'hover', 'actions'} -- supports rust-analyzer's grouping
  end,
  { silent = true, buffer = bufnr }
)


vim.keymap.set(
  "n",
  "<leader>a",
  function()
    vim.cmd.RustLsp("openDocs")
  end,
  { silent = true, buffer = bufnr }
)
end
return spec
