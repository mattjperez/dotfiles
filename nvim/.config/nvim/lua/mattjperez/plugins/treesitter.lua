local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	ident = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"rust",
		"lua",
		"json",
		"typescript",
		"go",
		"html",
		"markdown",
		"bash",
		"vim",
		"dockerfile",
		"gitignore",
	},
	auto_install = true,
})

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
