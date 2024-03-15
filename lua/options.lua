-- [[ Setting options ]]
vim.o.expandtab = true -- Replace tabs with spaces
vim.o.tabstop = 4 -- Number of spaces for 1 tab
vim.o.softtabstop = 4 -- Nummber of spaces for 1 tab when inserting
vim.o.shiftwidth = 4 -- Number of spaces used for indenting
vim.o.hlsearch = false -- Set highlight on search
vim.wo.number = true -- Make line numbers default
vim.wo.relativenumber = true -- Make relative line numbers default
vim.o.mouse = 'a' -- Enable mouse mode
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case-insensitive searching
vim.o.smartcase = true -- UNLESS \C or capital in search
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
vim.o.termguicolors = true -- Use more colors
vim.o.scrolloff = 8 -- Set minimum amount of lines to keep under and above cursor
vim.o.updatetime = 250 -- Decrease update time
vim.o.showmode = false -- Don't show mode since it is shown in status line
vim.o.splitright = true -- Split to right instead of left
vim.o.splitbelow = true -- Split below instead of above
vim.o.inccommand = 'split' -- Preview substitutions live
vim.o.gdefault = true

-- -- [[ Set Pwsh as the default shell for vim terms ]]
-- local powershell_options = {
--   shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
--   shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--   shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--   shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--   shellquote = "",
--   shellxquote = "",
-- }
--
-- for option, value in pairs(powershell_options) do
--   vim.opt[option] = value
-- end
