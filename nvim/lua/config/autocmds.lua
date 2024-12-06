-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Set indentation to 2 spaces
vim.api.nvim_create_autocmd("Filetype", {
  pattern = {
    "xml",
    "html",
    "xhtml",
    "css",
    "scss",
    "javascript",
    "typescript",
    "yaml",
    "lua",
    "javascriptreact",
    "typescriptreact",
  },
  command = "setlocal shiftwidth=2 tabstop=2",
})
