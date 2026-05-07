local M = {}
function M.setup()
  -- ==========
  -- OIL
  -- ==========
  vim.keymap.set("n", "-", "<CMD>Oil<CR>")

  -- ==========
  -- INDENTS
  -- ==========
  vim.keymap.set("n", "<leader>ti", function ()
    _G.ToggleIbl()
  end)

  -- ==========
  -- LSP
  -- ==========
  vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float)


  -- ==========
  -- TELESCOPE
  -- ==========
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

  -- ==========
  -- FLASH
  -- ==========
  local flash = require("flash")
  vim.keymap.set({ "n", "x", "o" }, "ff", flash.jump, { desc = "Flash" })
  vim.keymap.set({ "n", "x", "o" }, "<leader>S", flash.treesitter, { desc = "Flash Treesitter" })
  vim.keymap.set("o", "r", flash.remote, { desc = "Remote Flash" })
  vim.keymap.set({ "o", "x" }, "R", flash.treesitter_search, { desc = "Treesitter Search" })
  vim.keymap.set("c", "<C-s>", flash.toggle, { desc = "Toggle Flash Search" })
end
return M
