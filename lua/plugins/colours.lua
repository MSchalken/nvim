-- Colorscheme
return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       integrations = {
  --         mason = true,
  --         native_lsp = {
  --           enabled = true,
  --           underlines = {
  --             errors = { "undercurl" },
  --             hints = { "undercurl" },
  --             warnings = { "undercurl" },
  --             information = { "undercurl" },
  --           },
  --         },
  --         neotree = true,
  --         noice = true,
  --         notify = true,
  --         which_key = true,
  --       },
  --     })
  --
  --     -- vim.cmd.colorscheme("catppuccin")
  --   end,
  -- },
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'dark',
      }
      require('onedark').load()
    end,
  },
}
