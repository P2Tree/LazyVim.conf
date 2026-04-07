-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = true
-- LayVim auto format (default: true)

-- Deprecation warnings (default: false)
vim.g.deprecation_warnings = true

local opt = vim.opt

opt.scrolloff = 5 -- (default: 4)
opt.sidescrolloff = 40 -- (default: 5)
opt.colorcolumn = "101" -- (default: none)
opt.wrapscan = false -- (default: true)

vim.g.snacks_animate = false
