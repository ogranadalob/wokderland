-- Map leader definition
vim.g.mapleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'In file system navigation go to parent directory.' })
vim.keymap.set('n', '<leader>s', '<cmd>write<cr>', { desc = 'Save current file.' })

vim.keymap.set('n', 'tt', ':tabnew ', { desc = 'Prepare prompt to open new tab.' })

-- Telescope settings
--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files.' })
vim.keymap.set('n', '<leader>ft', builtin.git_files, { desc = 'Find in git tracked files, only works on git repos.' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find in files content.' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find in open buffers.' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Show help about tags and available commands.' })
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Find prompted string in files.' })

-- Harpoon settings
--
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
--

vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to harpon buffer.' })
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Toggle harpon buffer.' })

vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end, { desc = 'Load file 1 in harpon buffer.' })
vim.keymap.set('n', '<C-j>', function() ui.nav_file(2) end, { desc = 'Load file 2 in harpon buffer.' })
vim.keymap.set('n', '<C-k>', function() ui.nav_file(3) end, { desc = 'Load file 3 in harpon buffer.' })
vim.keymap.set('n', '<C-l>', function() ui.nav_file(4) end, { desc = 'Load file 4 in harpon buffer.' })

----

-- Fugitive (Git)
--

vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git check.' })

--

-- Move many lines to top
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move many lines to top.' })
-- Move many lines to bottom
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move many lines to bottom.' })
-- paste replacing current visual selected word
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = 'Paste replacing current visual selected word.' })
-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = 'Copy to system clipboard.' })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = 'Copy to system clipboard.' })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = 'Copy to system clipboard.' })
-- do escape on Ctrl+C
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = 'Go to normal mode.' })
-- no operation on Q
vim.keymap.set("n", "Q", "<nop>", { desc = 'No operation.' })

-- Format code
vim.keymap.set("n", "<M-S-f>", function()
  vim.lsp.buf.format()
end, { desc = 'Format current buffer code.' })


vim.keymap.set("n", "<F3>", "<cmd>NvimTreeToggle<CR>", { desc = 'Open nvim tree.' })
vim.keymap.set("n", "<leader><F3>", "<cmd>NvimTreeFocus<CR>", { desc = 'Open or go to nvim tree.' })
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeFindFile<CR>", { desc = 'Show current file in nvim tree.' })

vim.keymap.set("n", "<C-d>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
  { desc = 'Select all instances of current word and allow to rewrite all ate the same time (like multi cursor).' })

-- Window picker
--
local picker = require("window-picker")
vim.keymap.set("n", "-", function()
  local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
  vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })
--

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = 'Show undo tree toggle.' })

vim.keymap.set("n", "<leader><C-t>", "<ESC>:25spl|terminal<CR>i", { desc = 'Open terminal.' })

vim.keymap.set("n", "<leader><C-b>", "<ESC>:Gitsigns toggle_current_line_blame<CR>", { desc = 'Open terminal.' })


