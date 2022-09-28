-- Basic appearance
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1 -- Give more space for displaying messages.
vim.opt.colorcolumn = "80"

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Search
vim.opt.hlsearch = true -- not the same as ThePrimeagen's
vim.opt.incsearch = true

-- Swap
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.wrap = true -- Also different

vim.g.mapleader = " " -- Set <leader> key

-- Miscs
vim.opt.clipboard = "unnamedplus" -- Universal copy/paste
--vim.opt.mouse = "a"

-- Having longer updatetime (default is 4000ms = 4s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

--vim.opt.foldmethod="expr"
--vim.opt.foldexpr="nvim_treesitter#foldexpr()"


