vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim-tmux-navigator
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

vim.keymap.set("i", "jj", "<ESC>")

-- Move highlighted lines up and down to squeeze between lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append the next line to the current line and the cuosor DONT MOVE!
vim.keymap.set("n", "J", "mzJ`z")

-- Up and down halp page while having cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Find the next and prev of serached item in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Save the copied content in the register rather than the deleted one
vim.keymap.set("x", "<leader>p", "\"dP")

-- yank and use it outside nvim (Should be <leader>y/Y but I'll just use y/Y)
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

-- Substitution globally to the word that cursor is on 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make bash executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
