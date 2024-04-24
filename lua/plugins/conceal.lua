local spec = {
  "Jxstxs/conceal.nvim",
  requires = "nvim-treesitter/nvim-treesitter",
  lazy = true
}

function spec:config()
local conceal = require("conceal")

-- should be run before .generate_conceals to use user Configuration
conceal.setup({
    --[[ ["language"] = {
        enabled = bool,
        keywords = {
          ["keyword"] = {
              enabled     = bool,
              conceal     = string,
              highlight   = string
          }
        }
    } ]]
    ["lua"] = {
      enabled = true,
      keywords = {
        ["local"] = {
          enabled = true -- to disable concealing for "local"
        },
        ["return"] = {
          conceal = "R" -- to set the concealing to "R"
        },
        ["for"] = {
          highlight = "keyword" -- to set the Highlight group to "@keyword"
        }
      }
    },
    ["tex"] = {
      keywords = {
        ["\\section"] = {
          conceal = "---#"
        },
        ["\\subsection"] = {
          conceal = "---##"
        }
      }
    },
    ["language"] = {
      enabled = false -- to disable the whole language
    }

})

-- generate the scm queries
-- only need to be run when the Configuration changes
conceal.generate_conceals()

-- bind a <leader>tc to toggle the concealing level
vim.keymap.set("n", "cc", function()
  require("conceal").toggle_conceal()
end, { silent = true})


end

return spec
