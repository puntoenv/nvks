return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    scope = {
      enabled = true,
    },
  },
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
        -- char = "▎",
      },
    })
  end,
}
