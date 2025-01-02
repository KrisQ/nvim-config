return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')
      local builtin = require('telescope.builtin')
      vim.keymap.set("n", "<space>fh", builtin.help_tags, { desc = '[F]ind [H]elp' })
      vim.keymap.set("n", "<space>fd", builtin.find_files, { desc = '[F]ind in [D]irectory' })
      vim.keymap.set("n", "<space>fg", builtin.git_files, { desc = '[F]ind in [G]it files' })
      vim.keymap.set("n", "<space>fb", builtin.buffers, { desc = '[F]ind in [B]uffers' })
      vim.keymap.set("n", "<space>ff", builtin.live_grep, { desc = '[F]ind in [F]iles' })
      vim.keymap.set("n", "<space>en", function()
        builtin.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
    end
  }
}
