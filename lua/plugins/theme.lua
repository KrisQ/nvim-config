-- return {
--   "sainnhe/everforest",
--   priority = 1000,             -- Ensures the theme loads first
--   config = function()
--     vim.o.background = "light" -- Use "dark" for dark mode
--     vim.cmd("colorscheme everforest")
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--
--   config = function()
--     vim.o.background = "light"
--     vim.cmd("colorscheme catppuccin")
--   end
-- }
--
return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  priority = 1000,
  config = function()
    -- vim.o.background = "light"
    vim.cmd("colorscheme gruvbox")
  end
}
