vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'

vim.cmd([[nnoremap <SPACE> <Nop>]])
--vim.cmd([[nnoremap  c <Nop>]])
vim.cmd([[let localleader = '\\']])
vim.g.maplocalleader = '\\'
vim.g.mapleader = ' '
vim.cmd([[map <leader>g a<space><ESC>h]])
local modules = {
  "config.opts",
  "config.lazy",
  "config.keys",

}


for _, module in ipairs(modules) do
  require(module)
end
require("lush")
require("shipwright")

vim.cmd [[colorscheme frege]]

require("indent_blankline").setup{
  char = "│",
  filetype_exclude = {
    "help",
    "alpha",
    "dashboard",
    "neo-tree",
    "Trouble",
    "lazy",
    "mason",
    "notify",
    "toggleterm",
    "lazyterm",
  }
}

