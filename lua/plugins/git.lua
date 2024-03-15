return {
  -- Git related plugins
  {
    'tpope/vim-fugitive',
    keys = {
      {
        '<leader>gs',
        vim.cmd.Git,
        desc = '[G]it [S]tatus (fugitive)',
      },
    },
    config = function()
      local fugitive_augroup = vim.api.nvim_create_augroup('fugitive_augroup', {})
      vim.api.nvim_create_autocmd('BufWinEnter', {
        group = fugitive_augroup,
        pattern = '*',
        callback = function()
          if vim.bo.ft ~= 'fugitive' then
            return
          end

          local bufnr = vim.api.nvim_get_current_buf()
          local opts = { buffer = bufnr, remap = false }

          vim.keymap.set('n', '<leader>p', function()
            vim.cmd.Git('pull', '--rebase')
          end, opts)

          vim.keymap.set('n', '<leader>P', function()
            vim.cmd.Git 'push'
          end, opts)

          vim.keymap.set('n', '<leader>su', function()
            vim.cmd.Git('push', '-u', 'origin')
          end, opts)
        end,
      })
    end,
  },
}
