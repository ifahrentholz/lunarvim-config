-- --------------------------------------------------------
-- KEYMAP
-- --------------------------------------------------------
vim.keymap.set("n", "ss", ":split<cr>", { silent = true })
vim.keymap.set("n", "vv", ":vsplit<cr>", { silent = true })
vim.cmd('inoremap jj <Esc>')

-- --------------------------------------------------------
-- LINE NUMBER
-- --------------------------------------------------------
vim.opt.number = true
vim.opt.relativenumber = true

-- --------------------------------------------------------
-- CURSORLINE
-- --------------------------------------------------------
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- --------------------------------------------------------
-- COLORSCHEME
-- --------------------------------------------------------
lvim.colorscheme = "peachpuff"

-- --------------------------------------------------------
-- LUALINE
-- --------------------------------------------------------
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.theme = "molokai"


-- --------------------------------------------------------
-- PLUGINS
-- --------------------------------------------------------
lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}

-- --------------------------------------------------------
-- FORMATTER
-- --------------------------------------------------------
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "prettierd"
  }
}
lvim.format_on_save = true

-- --------------------------------------------------------
-- LINTER
-- --------------------------------------------------------
local linter = require "lvim.lsp.null-ls.linters"
linter.setup {}
