-- vim.opt.guicursor = '>'

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.termguicolors = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.wildmode = "full"
vim.o.splitbelow = true
vim.o.splitright = true

-- Colorscheme

-- Nightfox color scheme
-- * Variants
--   - Nightfox
--   - Dayfox
--   - Dawnfox
--   - Duskfox
--   - Nordfox
--   - Terafox
--   - Carbonfox

vim.cmd('colorscheme nightfox')
vim.cmd('colorscheme nordfox')
vim.cmd('colorscheme terafox')

-- Rose Pine Colorscheme
-- vim.cmd('colorscheme rose-pine')
