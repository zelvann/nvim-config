local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })

local opt = vim.opt

opt.autoindent = true
opt.bs = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.copyindent = true
opt.encoding = "utf-8"
opt.expandtab = true
opt.fileencoding = "utf-8"
opt.number = true
opt.showcmd = true
opt.showmode = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.splitright = true
opt.splitkeep = "cursor"
opt.title = true
opt.termguicolors = true

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	checker = {
		enabled = true,
	},
})
