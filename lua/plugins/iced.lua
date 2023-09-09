return {
  lazy = true,
  dependencies = {"vim-sexp"},
  'liquidz/vim-iced',
  ft = {"clojure"},
  config = function()
     vim.g.iced_enable_default_key_mappings = true
  end
}
