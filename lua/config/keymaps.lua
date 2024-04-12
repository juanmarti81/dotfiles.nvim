-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Delete a word backwards
-- keymap.set("i", "dw", "vb_d", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- New tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>th", ":tabnext<Return>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tl", ":tabprev<Return>", { desc = "go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

--Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Move between windows
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- vim.keymap.set("i", "<C-j>", "copilot#Next()", { expr = true, silient = true })
-- vim.keymap.set("i", "<C-k>", "copilot#Previous()", { expr = true, silient = true })
-- vim.keymap.set("i", "<C-l>", "copilot#Dismiss('\\<Escape>')", { expr = true, replace_keycodes = false }):

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
