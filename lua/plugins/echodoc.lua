local spec = {
"Shougo/echodoc",
"lazy = false"

}
function spec:config()
  vim.cmd[[set cmdheight=2]]
  vim.cmd[[g:echodoc#enable_at_startup=1]]
  vim.cmd[[g:echodoc#type = "floating"]]
end
return spec
