local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

-- Mappatura dei tasti per copia/incolla
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<C-v>', '"+p', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', {noremap = true, silent = true})
vim.keymap.set('n', 'm', '/', { noremap = true })
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {noremap = true, silent = true})
vim.opt.clipboard = "unnamedplus"
vim.opt.laststatus = 3
vim.keymap.set('n', '<leader>t', ':echo "Leader key works!"<CR>', { noremap = true, silent = true })

require("lazy").setup("plugins")
vim.cmd('colorscheme kawaii')
require("core.options")
require("core.keymaps")
require("core.autocmds")
vim.opt.colorcolumn = ""

if vim.fn.executable('wl-copy') == 1 then
    vim.g.clipboard = {
        name = 'wl-clipboard',
        copy = {
            ['+'] = 'wl-copy',
            ['*'] = 'wl-copy',
        },
        paste = {
            ['+'] = 'wl-paste',
            ['*'] = 'wl-paste',
        },
        cache_enabled = 0,
    }
end

vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', {noremap = true, silent = true})
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true, silent = true})
vim.lsp.inlay_hint.enable(true)
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')
vim.keymap.set('n', '<leader>h', ':split<CR>')
vim.keymap.set('n', '<leader>k', ':bd<CR>', { noremap = true, silent = true })

