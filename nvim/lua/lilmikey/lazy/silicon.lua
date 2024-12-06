-- Make sure to install the font "SauceCodePro NF" and "Noto Emoji" for this to work
-- Also make sure to install the "silicon" package:
-- https://github.com/Aloxaf/silicon

vim.keymap.set("v", "<leader>sc", vim.cmd.Silicon);

return {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    main = "nvim-silicon",
    config = function()
        require("nvim-silicon").setup({
            -- Configuration here, or leave empty to use defaults
            font = "SauceCodePro NF=34;Noto Emoji=34",
            theme = "Dracula",
        })
    end

}

