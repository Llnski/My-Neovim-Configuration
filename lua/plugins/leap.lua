
local spec = {
"ggandor/leap.nvim",
  lazy = false,
  dependencies = {
    "tpope/vim-repeat",
  },
  event = {"BufAdd"}
}

function spec:init()
    require('leap').opts.highlight_unlabeled_phase_one_targets = true
    local binder = require('config.Binder')
    binder:with_modes({'n', 'x', 'o'})
    binder:bind('f',  '<Plug>(leap-forward)')
    binder:bind('F',  '<Plug>(leap-backward)')
    binder:bind('gf', '<Plug>(leap-from-window)')
    vim.api.nvim_create_autocmd('ColorScheme', {
      callback = function ()
        --vim.api.nvim_set_hl(0, 'LeapBackdrop', {fg="#4C566A"  })
        vim.api.nvim_set_hl(0, 'LeapMatch', { bg = "#03045e", fg = "#FABD2F"})
        vim.api.nvim_set_hl(0, 'LeapLabelPrimary', {   })
        -- etc.
      end
    })
    end

return spec
