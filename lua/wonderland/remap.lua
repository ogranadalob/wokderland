-- Map leader definition
vim.g.mapleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>s', '<cmd>write<cr>', { desc = 'Save' })

vim.keymap.set('n', 'tt', ':tabnew ')

-- Telescope settings
--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ft', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Harpoon settings
--
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
--

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end)

----

-- Fugitive (Git)
--

vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

--

-- Move many lines to top
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move many lines to bottom
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- paste replacing current visual selected word
vim.keymap.set("x", "<leader>p", "\"_dP")
-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
-- do escape on Ctrl+C
vim.keymap.set("i", "<C-c>", "<Esc>")
-- no operation on Q
vim.keymap.set("n", "Q", "<nop>")

-- Format code
vim.keymap.set("n", "<M-S-f>", function()
  print("Format code")
  vim.lsp.buf.format()
end)


vim.keymap.set("n", "<F3>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader><F3>", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeFindFile<CR>")

vim.keymap.set("n", "<C-d>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeFindFile<CR>")

-- Window picker
--
local picker = require("window-picker")
vim.keymap.set("n", "-", function()
    local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
    vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })
-- 

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

