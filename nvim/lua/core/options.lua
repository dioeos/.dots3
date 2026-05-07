-- ========== --
-- GLOBAL CONFIGURATIONS
-- ========== --
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.swapfile = false

-- ========== --
-- VISUALS & APPEARANCE
-- ========== --
vim.opt.title = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.diagnostic.config({
  virtual_text = {
    prefix = "● ",
    spacing = 4,
  },
  signs = false,
  underline = true,
  update_in_insert = false,

  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "● "
  },
})
