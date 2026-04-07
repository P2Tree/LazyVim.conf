-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local del = vim.keymap.del

-- remove some keymap in LazyVim default configs
del("n", "<C-h>")
del("n", "<C-j>")
del("n", "<C-k>")
del("n", "<C-l>")

del("n", "<A-j>")
del("n", "<A-k>")
del("i", "<A-j>")
del("i", "<A-k>")
del("v", "<A-j>")
del("v", "<A-k>")

local map = vim.keymap.set

-- joint two lines together
map("n", "<leader>j", "J", { desc = "Joint two lines together", remap = false })

-- better cursor move
map({ "n", "v" }, "L", "$", { desc = "Jump to the tail of the line", remap = true })
map({ "n", "v" }, "H", "^", { desc = "Jump to the head of the line", remap = true })
map({ "n", "v" }, "K", "<C-y>", { desc = "Screen tiny step up scroll", remap = true })
map({ "n", "v" }, "J", "<C-e>", { desc = "Screen tiny step down scroll", remap = true })

map({ "n", "v" }, "<PageUp>", "<C-u>", { desc = "Screen half step up scroll", remap = true })
map({ "n", "v" }, "<PageDown>", "<C-d>", { desc = "Screen half step down scroll", remap = true })

-- windows
map("n", "-", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "\\", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>\\", "<C-W>v", { desc = "Split window right", remap = true })

map("n", "<C-h>", "<Cmd>lua require'tmux'.move_left()<CR>", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<Cmd>lua require'tmux'.move_bottom()<CR>", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<Cmd>lua require'tmux'.move_top()<CR>", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<Cmd>lua require'tmux'.move_right()<CR>", { desc = "Go to right window", remap = true })

-- commenting
map("n", "<leader>/", "gcc", { desc = "Toggle comment line", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment selection", remap = true })

local which_key = require("which-key")
which_key.add({
  { "<leader>-", hidden = true },
  { "<leader>|", hidden = true },
})
