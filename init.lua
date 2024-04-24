vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'
vim.cmd([[nnoremap <SPACE> <Nop>]])
vim.cmd([[nnoremap <t> <Nop>]])
vim.cmd([[nnoremap <Up> <Nop>]])
vim.cmd([[nnoremap <Down> <Nop>]])
vim.cmd([[nnoremap <leader>d "_d]])
vim.cmd([[xnoremap <leader>d "_d]])
vim.cmd([[xnoremap <leader>p "_dP]])
vim.cmd([[command EditInitVim :exe 'edit' $MYVIMRC]])
vim.cmd([[command SourceInitVim :exe 'source' $MYVIMRC]])

--more keybinds at bottom

vim.cmd([[let localleader = '\\']])

vim.g.maplocalleader = ' '
--vim.g.mapleader = '\<Space>'
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

vim.cmd([[map <leader>t :NvimTreeOpen<CR>]])
vim.cmd([[nmap <`> :ToggleTerm<CR>]])
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {buffer = 0})
vim.cmd([[digraph uq 8704]])
vim.cmd([[digraph eq 8707]])
vim.cmd([[digraph ne 9633]])
vim.cmd([[digraph ff 8594]])
vim.cmd([[digraph ts 8866]])
vim.cmd([[digraph in 2208]])
vim.cmd([[imap <C-a> <esc>]])
vim.cmd([[nmap <leader>a <C-a>]])
vim.cmd([[nmap j gj]])
vim.cmd([[nmap k gk]])
vim.cmd([[autocmd BufNewFile,BufRead *.pl set syntax=prolog]])
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
vim.cmd([[highlight htmlBold gui=bold guifg=#FABD2F ctermfg=124]])
vim.cmd([[highlight htmlItalic gui=italic guifg=#FFFFFF ctermfg=124]])
vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})

