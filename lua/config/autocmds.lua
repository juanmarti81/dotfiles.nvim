-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local keymap = vim.keymap
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md",
  callback = function()
    keymap.set("n", "go", function()
      require("auto-pandoc").run_pandoc()
    end, { silent = true, buffer = 0 })
  end,
  group = vim.api.nvim_create_augroup("setAutoPandocKeymap", {}),
  desc = "Set keymap for auto-pandoc",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    require("cmp").setup({ enabled = false })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "pandoc" },
  callback = function()
    vim.opt_local.spell = false
    vim.opt_local.wrap = true
  end,
})
