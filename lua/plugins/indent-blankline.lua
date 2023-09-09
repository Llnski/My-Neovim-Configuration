
local spec = {
 "lukas-reineke/indent-blankline.nvim",
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
}}
function spec:config()
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
  },
  show_trailing_blankline_indent = false,
  show_current_context = false,
    }
end
return spec
