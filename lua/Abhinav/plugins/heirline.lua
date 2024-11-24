return {
  'rebelot/heirline.nvim',
  config = function()
    local heirline = require 'heirline'

    -- Basic statusline configuration
    local statusline = {
      -- Left side
      { provider = 'mode' }, -- Shows the current mode (e.g., NORMAL, INSERT)
      { provider = 'filetype' }, -- Displays the file type
      { provider = 'filename' }, -- Shows the current file name

      -- Right side
      {
        provider = 'diagnostics', -- Shows diagnostic info if available
        right_sep = ' | ',
      }, -- Separator for the right side
      { provider = 'line_col' }, -- Displays line and column number
    }

    heirline.setup {
      statusline = statusline,
    }
  end,
}
