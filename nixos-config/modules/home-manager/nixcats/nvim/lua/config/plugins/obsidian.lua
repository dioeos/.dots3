require("lze").load({
  {
    "obsidian.nvim",
    for_cat = "notes",
    ft = "markdown",

    keys = {
      {
        "<leader>ot",
        function()
          vim.cmd("ObsidianNewFromTemplate")
        end,
        desc = "Obsidian new note from template",
      },
      {
        "<leader>on",
        function()
          vim.cmd("ObsidianNew")
        end,
        desc = "Obsidian new note",
      },
    },

    after = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "merle-vault",
            path = "~/merle-vault",
          },
        },
        picker = {
          name = "telescope.nvim"
        },
        notes_subdir = "Raw",
        new_notes_location = "Raw",

        templates = {
          folder = "Housekeeping/Templates",
        },
      })
    end
  }
})
