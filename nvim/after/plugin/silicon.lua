-- Make sure to install the font "SauceCodePro NF" and "Noto Emoji" for this to work
-- Also make sure to install the "silicon" package:
-- https://github.com/Aloxaf/silicon
require("silicon").setup({
  -- Configuration here, or leave empty to use defaults
  font = "SauceCodePro NF=34;Noto Emoji=34",
  theme = "Dracula",
})

vim.keymap.set("v", "<leader>sc", vim.cmd.Silicon);

