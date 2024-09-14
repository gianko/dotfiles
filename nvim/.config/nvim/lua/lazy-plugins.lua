require("lazy").setup({
	"tpope/vim-surround",
	require("plugins.catppuccin"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lspconfig"),
	require("plugins.cmp"),
	require("plugins.fugitive"),
	require("plugins.gitsigns"),
	require("plugins.colorizer"),
	require("plugins.indent-lines"),
	require("plugins.autopairs"),
	require("plugins.oil"),
	require("plugins.undotree"),
	require("plugins.conform"),
	require("plugins.saga"),
	require("plugins.trouble"),
}, {
	ui = {
		icons = {},
	},
})
