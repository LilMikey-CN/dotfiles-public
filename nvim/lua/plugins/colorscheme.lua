function ColorMyPencils(color)
  color = color or "tokyonight-night"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        variant = "moon",
      }
    end,
    config = function()
      require("rose-pine").setup({
        disable_background = true,
      })
      ColorMyPencils()
    end,
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
}
