return {
  "folke/noice.nvim",
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
  },
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      },
    },
    views = {
      hover = {
        border = {
          style = "rounded",
        },
        -- size = {
        -- max_width = 80,
        -- },
      },
    },
  },
}
