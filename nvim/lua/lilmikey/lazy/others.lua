-- other plugins with fewer config code goes here

return {
    {
        "windwp/nvim-autopairs",
        config = function ()
            require("nvim-autopairs").setup {}
        end
    },
   {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  }
}
