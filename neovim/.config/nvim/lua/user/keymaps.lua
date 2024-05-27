-- Keymap updates

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Clear highlights on double-mash of <esc>
keymap("n", "<esc><esc>", ":noh<return>", opts)

-- LEGACY KEYMAPS NO LONGER USED --

-- Use jk as an alias for <esc>
-- keymap("i", "jk", "<esc>", opts)

-- Allow \cd to :cd into this file's current directory
-- keymap("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", opts)  

