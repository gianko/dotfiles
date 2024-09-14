vim.opt.number = true
vim.opt.hidden = true
vim.opt.title = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.scrolloff = 8
vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"

vim.opt.incsearch = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.inccommand = "split"
vim.opt.backspace = "start,eol,indent"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.mouse = "a"
vim.opt.mousehide = true

vim.diagnostic.config({
	virtual_text = false,
	-- float = {
	-- header = false,
	-- border = "rounded",
	-- focusable = true,
	-- },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
vim.cmd([[autocmd! ColorScheme * highlight Normal guibg=#181825]])
vim.cmd([[autocmd! ColorScheme * highlight NormalFloat guibg=#181825]])
vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=#9cdaea guibg=#181825]])
