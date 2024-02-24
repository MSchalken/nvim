-- LSP Configuration & Plugins
return {
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    { 'j-hui/fidget.nvim', config = true },
    { 'folke/neodev.nvim', config = true },
  },
  keys = {
    {
      'K',
      vim.lsp.buf.hover,
      desc = 'Hover',
    },
    {
      '<C-k>',
      vim.lsp.buf.signature_help,
      desc = 'Signature Help',
    },
    {
      '<leader>ca',
      vim.lsp.buf.code_action,
      desc = '[C]ode [A]ction',
      mode = { 'n', 'v' },
    },
    {
      'gd',
      function()
        require('telescope.builtin').lsp_definitions {
          reuse_win = true,
        }
      end,
      desc = '[G]oto [D]efinition',
    },
    {
      'gr',
      function()
        require('telescope.builtin').lsp_references {
          reuse_win = true,
        }
      end,
      desc = '[G]oto [R]eferences',
    },
    {
      'gI',
      function()
        require('telescope.builtin').lsp_implementations {
          reuse_win = true,
        }
      end,
      desc = '[G]oto [I]mplementation',
    },
    {
      '[d',
      vim.diagnostic.goto_next,
      desc = 'Next Diagnostic',
    },
    {
      ']d',
      vim.diagnostic.goto_prev,
      desc = 'Previous Diagnostic',
    },
    {
      '<leader>vd',
      vim.diagnostic.open_float,
      desc = '[V]iew [D]iagnostic',
    },
    {
      '<leader>vl',
      vim.diagnostic.setloclist,
      desc = '[V]iew Diagnostics [L]ist',
    },
    {
      '<leader>rn',
      vim.lsp.buf.rename,
      '[R]e[n]ame',
    },
  },
}
