return {
  'Shatur/neovim-ayu',
  config = function()
    local colors = require 'ayu.colors'
    local mirage = false
    colors.generate(mirage) -- Pass `true` to enable mirage
    require('ayu').setup {
      mirage = mirage,
      terminal = true,
      overrides = function()
        local default_bg = colors.bg
        local default_fg = colors.fg
        local variable = {
          Keyword = {
            fg = colors.keyword,
            italic = true,
          },
        }
        if vim.o.background == 'dark' then
          return vim.tbl_extend('force', variable, {
            Normal = {
              bg = '#0f151e',
              fg = '#808080',
            },
            NormalNC = {
              bg = default_bg,
              fg = default_fg,
            },
          })
        else
          return vim.tbl_extend('force', variable, {
            Normal = {
              bg = '#f0f0f0',
              fg = '#808080',
            },
            NormalNC = {
              bg = default_bg,
              fg = default_fg,
            },
          })
        end
      end,
    }
    vim.cmd 'colorscheme ayu'
  end,
}
