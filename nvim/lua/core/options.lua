local opt = vim.opt

-- Impostazioni UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"
opt.termguicolors = true
opt.showmode = false

-- Indentazione
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true

-- Ricerca
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Performance
opt.lazyredraw = true
opt.updatetime = 250

-- Altro
opt.clipboard = "unnamedplus"
opt.backup = false
opt.swapfile = false
opt.undofile = true
