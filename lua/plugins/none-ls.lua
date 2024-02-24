return {
  -- {
  --   'nvimtools/none-ls.nvim',
  --   enable = false,
  --   keys = {
  --     { '<leader>fm', vim.lsp.buf.format, desc = '[F]or[m]at Current Buffer' },
  --   },
  --   config = function()
  --     local nls = require 'null-ls'
  --
  --     nls.setup {
  --       nls.builtins.formatting.stylua,
  --       nls.builtins.formatting.clang_format,
  --     }
  --   end,
  -- },
  {
    'stevearc/conform.nvim',
    keys = {
      {
        '<leader>fm',
        function()
          require('conform').format()
        end,
        '[F]or[m]at Current Buffer',
      },
    },
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        c = { 'clang_format' },
        cpp = { 'clang_format' },
      },
    },
  },
}
