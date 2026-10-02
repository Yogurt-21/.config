
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.o.shiftwidth = 4

-- Make line numbers default
-- vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.o.relativenumber = true
vim.o.nu = true
vim.o.showmode = true


-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true


vim.schedule(function()

    vim.o.clipboard = 'unnamedplus'

end)

vim.o.cursorline = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'
-- Enable break indent
vim.o.breakindent = false

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'
vim.o.splitright = true
vim.o.splitbelow = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR>')

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- TIP: Disable arrow keys in normal mode
 vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
 vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
 vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
 vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--My Custom Config
 vim.keymap.set('n', '<Leader>w', '<cmd>w!<CR>')
 vim.keymap.set('n', '<Leader>t', '<cmd>tabnew<CR>')
 vim.keymap.set('n', '<Leader>q', '<cmd>wq<CR>')
 vim.keymap.set('n', '<Leader>qq', '<cmd>q!<CR>')
-- vim.keymap.set('n', '<Leader>e', ':e ')
 vim.keymap.set('n', '<Leader>y', '<cmd>normal ``<CR> ')
 vim.keymap.set('n', '<Leader>l', 'gt')
 vim.keymap.set('n', '<Leader>h', 'gT')
 vim.keymap.set('n', '<Leader>n', '<cmd>!node.exe main.js<CR>')

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
    callback = function()
        if vim.bo.modified then
            vim.cmd("silent write")
        end
    end,
})


vim.o.termguicolors = true

local c = {
  rosewater = "#f4dbd6",
  pink = "#f5bde6",
  mauve = "#c6a0f6",
  red = "#ed8796",
  peach = "#f5a97f",
  yellow = "#eed49f",
  green = "#a6da95",
  teal = "#8bd5ca",
  blue = "#8aadf4",
  lavender = "#b7bdf8",

  text = "#cad3f5", subtext0 = "#a5adcb",
  overlay0 = "#6e738d",

  surface0 = "#363a4f",
  base = "#24273a",
  mantle = "#1e2030",
  crust = "#181926",
}
local hl = vim.api.nvim_set_hl

--hl(0, "Normal",       { fg = c.text, bg = c.base })
hl(0, "NormalFloat",  { fg = c.text, bg = c.mantle })
hl(0, "Comment",      { fg = c.overlay0, italic = true })
hl(0, "String",       { fg = c.green })
hl(0, "Number",       { fg = c.peach })
hl(0, "Function",     { fg = c.blue })
hl(0, "Keyword",      { fg = c.mauve })
hl(0, "Type",         { fg = c.yellow })
hl(0, "Identifier",   { fg = c.lavender })
hl(0, "Constant",     { fg = c.peach })

hl(0, "LineNr",       { fg = c.surface0 })
hl(0, "CursorLine",   { fg = "none" })
hl(0, "CursorLineNr", { fg = c.yellow, bg = "none", bold = true })

hl(0, "Visual",       { fg = c.yellow, bg = c.surface0 })
hl(0, "StatusLine",   { fg = c.yellow, bg = "none" })
hl(0, "VertSplit",    { fg = c.surface0 })
hl(0, "ModeMsg",    { fg = c.yellow })

hl(0, "TabLineFill",    { bg = "none" })
hl(0, "TabLine",    { fg = c.surface0, bg = "none" })
hl(0, "TabLineSel",    { fg = c.yellow, bg = "none" })

--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
--vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

--vim.o.updatetime = 500
--
--vim.api.nvim_create_autocmd('CursorHold', {
--  callback = function()
--    vim.lsp.buf.hover()
--  end,
--})
--
--vim.lsp.config['clangd'] = {
--
-- -- Command and arguments to start the server.
--
--  cmd = { 'clangd' },
--
--  -- Filetypes to automatically attach to.
--
--  filetypes = { 'cpp' },
--
--  -- Sets the workspace "root" to the directory where any of these files is found.
--
--  -- Files sharing a root will reuse the LSP client/connection.
--
--  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
--
--  root_markers = { 'compile_commands.json' },
--
--  -- Server-specific settings. https://github.com/EmmyLuaLs/emmylua-analyzer-rust/blob/main/docs/config/emmyrc_json_EN.md
--
--  settings = {
--
--
--  }
--
--
--}
--
--vim.lsp.enable('clangd')
--vim.keymap.set('n', '<Leader>K', vim.lsp.buf.hover)

require("config.lazy")

vim.keymap.set('n', '<Leader>e', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>eg', '<cmd>Telescope live_grep<CR>')
vim.keymap.set('n', '<Leader>eb', '<cmd>Telescope buffers<CR>')
vim.keymap.set('n', '<Leader>eh', '<cmd>Telescope help_tags<CR>')
