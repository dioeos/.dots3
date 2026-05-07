return {
  {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
		})
	end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      require("marks").setup({
        mappings = {
          next = "m.",
          prev = "m,",
          set_next = false,
        },
      })
    end,
  },

  {
    "kevinhwang91/nvim-ufo",
    event = "BufRead",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      vim.o.foldcolumn = "1" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
      vim.keymap.set("n", "zK", function()
        local winid = require("ufo").peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end, { desc = "Peek Fold" })

      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "lsp", "indent" }
        end,
      })
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},

    config = function ()
      require("ibl").setup()
      local function init()
        vim.defer_fn(function ()
          vim.cmd("IBLDisable")
        end, 0)
      end
      init()

      _G.ibl_active = false

      _G.ToggleIbl = function ()
        if _G.ibl_active then
          vim.cmd("IBLDisable")
        else
          vim.cmd("IBLEnable")
        end
        _G.ibl_active = not _G.ibl_active
      end

    end
  },
  {
    'nvim-telescope/telescope.nvim', version = '0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
}
}
