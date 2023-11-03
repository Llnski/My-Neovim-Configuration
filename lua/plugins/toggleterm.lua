local spec =
  {
    'akinsho/toggleterm.nvim', version = "*", config = true,
    lazy = false
}

function spec:config()
  local tt = require("toggleterm")

  tt.setup{
    open_mapping = "`"
}

end
return spec
