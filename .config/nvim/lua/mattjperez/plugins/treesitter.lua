local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
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
