return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = "VeryLazy",
  keys = {
    {
      '<S-h>',
      '<cmd>BufferLineCyclePrev<cr>',
      desc = "Prev buffer",
    },
    {
      '<S-l>',
      '<cmd>BufferLineCycleNext<cr>',
      desc = 'Next buffer',
    },
  },
  opts = {
    options = {
      diagnostics = 'nvim_lsp',
      always_show_bufferline = false,
    },
  },
}
