local spec = {
  "rktjmp/lush.nvim",
  priority = 100000,
  config = function()
    require("lush")
  end
  }

return spec
