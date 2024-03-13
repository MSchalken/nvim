-- Collection of small modules including a statusline
return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup {
      n_lines = 500,
    }

    require('mini.surround').setup {}

    local statusline = require 'mini.statusline'

    statusline.setup {
      use_icons = true,
    }

    statusline.section_location = function()
      return '%21:%-2v'
    end
  end,
}
