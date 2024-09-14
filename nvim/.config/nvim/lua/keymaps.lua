vim.keymap.set("n", "<Esc>", "<cmd>nohl.search<CR>", {})
vim.keymap.set("n", "<leader>nl", "<cmd>nohl.search<CR>", {})
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {})

-- move while visual selected
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

-- cursor not at the end
vim.keymap.set("n", "J", "mzJ`z", {})

-- for autopair
vim.keymap.set("i", "<C-l>", "<Right>", {})

-- page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

--  Keeps cursor in the middle while searching
vim.keymap.set("n", "N", "Nzzzv", {})
vim.keymap.set("n", "n", "nzzzv", {})

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], {})

-- yank whole line
vim.keymap.set("n", "Y", "VY", {})

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

-- save and format
-- vim.keymap.set("n", "<leader>fs", function()
--   vim.lsp.buf.format()
--   vim.cmd.write()
-- end)

-- search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- window navigation
vim.keymap.set("n", "<leader>h", function()
	vim.cmd("wincmd h")
end, {})
vim.keymap.set("n", "<leader>j", function()
	vim.cmd("wincmd j")
end, {})
vim.keymap.set("n", "<leader>k", function()
	vim.cmd("wincmd k")
end, {})
vim.keymap.set("n", "<leader>l", function()
	vim.cmd("wincmd l")
end, {})

-- undo buffer
vim.keymap.set("n", "<leader><TAB>", function()
	vim.cmd("b#")
end, {})

-- navigate quicklist
vim.keymap.set("n", "<C-j>", vim.cmd.cnext, {})
vim.keymap.set("n", "<C-k>", vim.cmd.cprev, {})

-- close splits
-- vim.keymap.set("n", "<leader>sc", vim.cmd.close, {})

-- navigate buffers
vim.keymap.set("n", "<leader>bc", "<cmd>bp|bd #<CR>")
vim.keymap.set("n", "<leader>bd", vim.cmd.bd)
vim.keymap.set("n", "<leader>bp", vim.cmd.bp)
vim.keymap.set("n", "<leader>bn", vim.cmd.bn)

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
