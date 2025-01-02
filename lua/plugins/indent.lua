return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      enabled = true,     -- Ensure scope highlighting is enabled
      show_start = false, -- Disable underlining at the start of the scope
      show_end = true,    -- Optional: Keep underline at the end of the scope
    },
  },
}
