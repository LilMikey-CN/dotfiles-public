local nnoremap = require("james.keymap").nnoremap
local inoremap = require("james.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

inoremap("jj", "<ESC>")
