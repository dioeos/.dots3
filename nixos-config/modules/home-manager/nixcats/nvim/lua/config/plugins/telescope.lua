require("lze").load({
  {
    "telescope.nvim",
    for_cat = "tools",
    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Telescope files",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Grep files",
      },
    },
    after = function()
      require("telescope").setup({})
    end
  }
})
