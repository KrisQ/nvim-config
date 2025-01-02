return {
  {
    "nvim-lua/plenary.nvim", -- Harpoon's dependency
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon").setup({
        global_settings = {
          save_on_toggle = false,
          save_on_change = true,
        },
      })

      -- Key bindings for Harpoon with descriptions
      local map = vim.keymap.set

      map("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Harpoon: Add file to marks" })
      map("n", "<leader>hm", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon: Toggle quick menu" })
      map("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "Harpoon: Navigate to mark 1" })
      map("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "Harpoon: Navigate to mark 2" })
      map("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end, { desc = "Harpoon: Navigate to mark 3" })
      map("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end, { desc = "Harpoon: Navigate to mark 4" })
      map("n", "<leader>hn", require("harpoon.ui").nav_next, { desc = "Harpoon: Navigate to next mark" })
      map("n", "<leader>hp", require("harpoon.ui").nav_prev, { desc = "Harpoon: Navigate to previous mark" })
      map("n", "<leader>hr", function()
        require("harpoon.mark").clear_all()
        print("Harpoon: All marks have been cleared.")
      end, { desc = "Harpoon: Reset all marks" })
    end,
  },
}
