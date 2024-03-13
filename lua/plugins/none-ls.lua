return {
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
}
