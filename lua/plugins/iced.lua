local spec = {
  enabled = false,
  lazy = true,
  dependencies = {"vim-sexp"},
  'liquidz/vim-iced',
  ft = {"clojure"},
}

function spec:config()
    print("iced load")

     vim.g.iced_enable_default_key_mappings = true

end
return spec
