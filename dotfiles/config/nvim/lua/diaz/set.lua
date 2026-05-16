vim.opt.nu = false
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftround = true

vim.opt.wrap = false

-- Undo directory
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true

--Left bar & displaying
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.cursorline = true

vim.g.mapleader = " "
vim.opt.signcolumn = "yes"

vim.opt.guicursor = "n-v-c:block," .. "i-ci-ve:ver25," .. "r-cr:hor20," .. "o:hor50,"

--Mouse
vim.opt.mouse = "a"

-- Formating options
vim.cmd([[set formatoptions=jtcrql]])

vim.cmd([[
    augroup newline_after_comment
    autocmd!
    autocmd FileType * set formatoptions-=o
    augroup END
]])
