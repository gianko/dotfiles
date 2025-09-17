-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Navigate between windows using leader + direction keys.
vim.keymap.set("n", "<leader>h", function()
  vim.cmd("wincmd h")
end, { desc = "Move to left window" })
vim.keymap.set("n", "<leader>j", function()
  vim.cmd("wincmd j")
end, { desc = "Move to bottom window" })
vim.keymap.set("n", "<leader>k", function()
  vim.cmd("wincmd k")
end, { desc = "Move to top window" })
vim.keymap.set("n", "<leader>l", function()
  vim.cmd("wincmd l")
end, { desc = "Move to right window" })

vim.keymap.set("n", "<leader><TAB>", "<cmd>b#<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bc", "<cmd>bp|bd #<CR>", { desc = "Close current buffer and switch to previous" })
vim.keymap.set("n", "<leader>bd", vim.cmd.bd, { desc = "Close current buffer" })

-- Mappings for moving around the file and between windows.
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half a page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half a page up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })
--
-- Mappings to improve text editing and movement.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Other useful editing mappings.
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right in insert mode (e.g., for autopairs)" })

-- Remaps for paste, yank, and delete.
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without yanking selected text" })
vim.keymap.set("n", "Y", "VY", { desc = "Yank entire line" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Search and replace the word under the cursor.
vim.keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace word under cursor" }
)

vim.keymap.set("n", "<C-j>", vim.cmd.cnext, { desc = "Next item in quickfix list" })
vim.keymap.set("n", "<C-k>", vim.cmd.cprev, { desc = "Previous item in quickfix list" })
