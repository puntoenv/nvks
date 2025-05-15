return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = {
    {
      "echasnovski/mini.icons",
      opts = {},
    },
  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require("oil").setup({})
    vim.keymap.set("n", "<leader>o", "<CMD>Oil .<CR>", {
      desc = "Open Oil Root Directory",
    })
    vim.keymap.set("n", "<leader>O", "<CMD>Oil<CR>", {
      desc = "Open Oil Current Directory",
    })
  end,
}
