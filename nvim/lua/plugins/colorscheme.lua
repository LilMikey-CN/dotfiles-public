return {
  {
    "craftzdog/solarized-osaka.nvim",
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        variant = "moon",
        transparent = true,
      }
    end,
  },
}
