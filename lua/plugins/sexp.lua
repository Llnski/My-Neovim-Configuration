return {
  'guns/vim-sexp',
  enabled = false,
  dependencies = {
    "tpope/vim-repeat"
  },
  ft = {
    "clj",
    "clojure"
  },
  config = function()
    vim.cmd([[let g:sexp_enable_insert_mode_mappings = 1]])
    vim.cmd([[
      nmap <Leader>F v<Plug>(sexp_outer_top_list):ScreenSend<CR>
      nmap <Leader>f v<Plug>(sexp_outer_list):ScreenSend<CR>
      nmap <Leader>e v<Plug>(sexp_inner_element):ScreenSend<CR>
    ]])
    --vim.cmd([[<Plug>(sexp_outer_element)]])
  end,
}

