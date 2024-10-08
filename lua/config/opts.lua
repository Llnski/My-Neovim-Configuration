local icons = require("config.icons")
local opt = vim.opt

opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
opt.wildmenu = true

opt.swapfile = false
opt.undofile = true

opt.timeout = false
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

opt.termguicolors = true
opt.confirm = false
opt.equalalways = false
opt.splitbelow = true
opt.splitright = true
opt.scrolloff = 2
opt.sidescrolloff = 2

opt.list = true
opt.listchars = { tab = icons.layout.tab .. "  " }
opt.fillchars:append({ eob = " " })

opt.laststatus = 0
opt.statusline = "-"
opt.ruler = true
opt.colorcolumn = "+1"
opt.number = true
opt.relativenumber = false
opt.breakindent = true
opt.cursorlineopt:append("number", "screenline")

opt.linebreak = true
opt.showbreak = icons.layout.wrap .. " "

opt.ignorecase = true
opt.smartcase = true

opt.pumheight = 20
opt.complete = {}

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

opt.spell = true
opt.spelllang:append("programming")
opt.spelloptions:append("camel")
