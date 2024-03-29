local icons = require("config.icons")

local spec = {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter" },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "L3MON4D3/LuaSnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
    },
}
function spec:config()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
        snippet = {
            expand = function(opts)
                luasnip.lsp_expand(opts.body)
            end,
        },
        experimental = {
            ghost_text = true,
        },
        window = {
            completion = {
                scrolloff = vim.go.scrolloff,
                border = "rounded",
            },
            documentation = {
                border = "rounded",
            },
        },
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(_, item)
                local kind = item.kind
                item.kind = icons.kind[kind]
                item.menu = kind:gsub("(%l)(%u)", "%1 %2"):lower()

                return item
            end,
        },
        sources = {
            {
                name = "nvim_lsp",
                max_item_count = 80,
            },
            {
                name = "buffer",
                max_item_count = 20,
                option = {
                    get_bufnrs = function()
                        return vim.tbl_map(function(win)
                            return vim.api.nvim_win_get_buf(win)
                        end, vim.api.nvim_list_wins())
                    end,
                },
            },
        },



        mapping = {
            ["<c-space>"] = cmp.mapping(function()
                    cmp.complete()
            end, { "i", "s" }),
            ["<c-y>"] = cmp.mapping(function(fallback)
                if not cmp.visible() then
                    fallback()
                end
                cmp.scroll_docs(-1)
            end, { "i", "s" }),
            ["<c-e>"] = cmp.mapping(function(fallback)
                if not cmp.visible() then
                    fallback()
                end
                cmp.scroll_docs(1)
            end, { "i", "s" }),
            ["<c-p>"] = cmp.mapping(function(fallback)
                if not cmp.visible() then
                    fallback()
                end
                cmp.select_prev_item()
            end, { "i", "s" }),
            ["<c-n>"] = cmp.mapping(function(fallback)
                if not cmp.visible() then
                    fallback()
                end
                cmp.select_next_item()
            end, { "i", "s" }),
            ["<cr>"] = cmp.mapping(function(fallback)
                if cmp.get_selected_entry() == nil then
                    fallback()
                end
                cmp.confirm()
            end, { "i", "s" }),
            ["<s-tab>"] = cmp.mapping(function(fallback)
                if not luasnip.jumpable(-1) then
                    fallback()
                end
                luasnip.jump(-1)
            end, { "i", "s" }),
          ['<tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
            else
              fallback()
            end
          end, {"i", "s"}),
        },
    })
end
return spec
