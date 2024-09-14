return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
			vim.keymap.set("n", "<leader>gh", ":diffget //3<CR>")
			vim.keymap.set("n", "<leader>gu", ":diffget //2<CR>")
			vim.keymap.set("n", "<leader>gf", ":Git pull<CR>")
			vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
			vim.keymap.set("n", "<leader>ga", ":Git fetch --all<CR>")
			vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
			vim.keymap.set("n", "<leader>gl", ":Git push --force-with-lease<CR>")
		end,
	},
}
