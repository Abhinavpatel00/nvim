return -- Initialize lazy.nvim (if not already initialized)
{
  'norcalli/nvim-colorizer.lua',
  Lazy = 'true',
  event = 'VeryLazy',
  config = function()
    -- Basic setup for colorizer
    require('colorizer').setup({
      '*', -- Highlight all files by default
      css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in CSS files
      html = { mode = 'foreground' }, -- Use foreground highlighting for HTML
    }, {
      RGB = true, -- Enable #RGB hex codes (e.g., #abc)
      RRGGBB = true, -- Enable #RRGGBB hex codes (e.g., #aabbcc)
      names = true, -- Enable "Name" codes like Blue, Red, etc.
      RRGGBBAA = true, -- Disable #RRGGBBAA hex codes
      rgb_fn = true, -- Enable CSS rgb() and rgba() functions
      hsl_fn = true, -- Disable CSS hsl() and hsla() functions
      css = true, -- Enable all CSS features
      css_fn = false, -- Disable all CSS *functions* except rgb_fn
      mode = 'background', -- Default to background highlighting for colors
    })

    -- Optionally, set up keybindings to toggle colorizer on/off
    vim.api.nvim_set_keymap('n', '<Leader>tc', ':ColorizerToggle<CR>', { noremap = true, silent = true })
  end,
}
