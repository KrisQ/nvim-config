return {
  "rachartier/tiny-inline-diagnostic.nvim",
  priority = 1000,    -- needs to be loaded in first
  event = "VeryLazy", -- Or `LspAttach`
  config = function()
    require('tiny-inline-diagnostic').setup({
      preset = "ghost",      -- Use the "ghost" preset for a minimalistic look
      options = {
        show_source = false, -- Hide the original diagnostic source
        multilines = true,   -- Endables it on all lines
      }
    })
  end
}
