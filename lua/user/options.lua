-- --------------------------------------------------------
-- KEYMAP
-- --------------------------------------------------------
vim.keymap.set("n", "ss", ":split<cr>", { silent = true })
vim.keymap.set("n", "vv", ":vsplit<cr>", { silent = true })
vim.cmd('inoremap jj <Esc>')
lvim.keys.insert_mode["<C-s>"] = "<cmd>lua vim.lsp.buf.signature_help()<cr>"


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
-- lvim.colorscheme = "retrobox"
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.theme = "dracula"


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
  { "lunarvim/colorschemes" },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
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
