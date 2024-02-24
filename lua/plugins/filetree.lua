-- File tree
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  cmd = 'Neotree',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    {
      '<leader>fe',
      function()
        require('neo-tree.command').execute {
          position = 'float',
          toggle = true,
          dir = vim.loop.cwd(),
        }
      end,
      desc = '[F]ile [E]xplorer',
    },
    {
      '<leader>fb',
      function()
        require('neo-tree.command').execute {
          source = 'buffers',
          position = 'float',
          toggle = true,
        }
      end,
      desc = '[F]ile Explorer [B]uffers',
    },
  },
}
