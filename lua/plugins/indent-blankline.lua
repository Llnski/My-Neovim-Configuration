local spec = {
 "lukas-reineke/indent-blankline.nvim",
 enabled=false,
 version = "2.20.8",
  lazy=false,
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
    "indent-blankline.lua",
}
}
function spec:config()
--local highlight = {
--    "Grey",
--    "RainbowYellow",
--    "RainbowRed",
--    "RainbowBlue",
--    "RainbowOrange",
--    "RainbowGreen",
--    "RainbowViolet",
--    "RainbowCyan",
--}
--
--  local hooks = require "ibl.hooks"
--
--
--  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
--      vim.api.nvim_set_hl(0, "Grey", { fg = "#4C566A" })
--      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
--      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
--      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
--      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
--      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
--      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
--  end)
--
--    --require("ibl").setup{
--    --char = "│",
--    --show_trailing_blankline_indent = false,
--    --show_current_context = true,
--     -- }
--  require("ibl").setup { indent = { highlight = highlight } }
end
return spec
