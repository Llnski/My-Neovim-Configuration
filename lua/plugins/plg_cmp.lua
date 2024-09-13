local iced = {
  enabled = false,
'lamp/cmp-iced',
ft={"clojure"},
dependencies={'liquidz/vim-iced'}
}
local M = {
	"hrsh7th/nvim-cmp",
  enabled = false,
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
    iced,
		"L3MON4D3/LuaSnip",
	},
  event = "InsertEnter"
}
M.config = function()
	local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }
	cmp.setup({
formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
          local menu_icon ={
              nvim_lsp = 'λ',
              vsnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			 completion = cmp.config.window.bordered(),
			 documentation = cmp.config.window.bordered()
		},
		mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-l>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources(
  {
    { name = 'path' },                              -- file paths
    { name = 'nvim_lsp' },      -- from language server
    { name = 'iced' },      -- from language server
    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    { name = 'nvim_lua' },       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'luasnip' },         -- nvim-cmp source for vim-vsnip
    { name = 'calc'},                               -- source for math calculation
  }
		),
	})
	--cmp.setup.cmdline(":", {
	--	mapping = cmp.mapping.preset.cmdline(),
	--	sources = cmp.config.sources({
	--		{ name = "path" },
	--	}, {
	--		{ name = "cmdline" },
	--	}),
	--})
end
return M
