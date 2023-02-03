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
		"html",
		"markdown",
		"bash",
		"vim",
		"gitignore",
	},
	auto_install = true,
})
