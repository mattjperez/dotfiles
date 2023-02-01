local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- Number of lines to keep above/below cursor
opt.scrolloff = 8

-- undo, persistent
opt.undofile = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
