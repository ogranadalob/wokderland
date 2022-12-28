-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = { -- view.mappings.list
        { key = "u", action = "dir_up" },
        { key = "<leader><CR>", action = "tabnew" },
        { key = "a", action = "create" },
        { key = "d", action = "remove" },
        { key = "D", action = "trash" },
        { key = "<F2>", action = "rename" },
        { key = "<C-r>", action = "full_rename" },
        { key = "e", action = "rename_basename" },
        { key = "<C-x>", action = "cut" },
        { key = "<C-c>", action = "copy" },
        { key = "<C-v>", action = "paste" },

        { key = "-", action = "toggle_file_info" },
        { key = "<leader>-", action = "dir_up" },
        { key = "<leade>+", action = "cd" },
      },
    },
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = true,
  },
})
