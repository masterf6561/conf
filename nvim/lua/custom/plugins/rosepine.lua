return {
  'rose-pine/neovim',
  config = function()
    require("rose-pine").setup({
      disable_background = true
      --      disable_float_background = true
    })
  end,
}
