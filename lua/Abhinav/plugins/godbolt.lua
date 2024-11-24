return {
  -- Plugin specification
  'p00f/godbolt.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Godbolt.nvim requires plenary.nvim
  config = function()
    -- Setup godbolt.nvim with desired configuration
    require('godbolt').setup {
      languages = {
        cpp = { compiler = 'g122', options = {} }, -- Example for C++
        c = { compiler = 'cg122', options = {} }, -- Example for C
        rust = { compiler = 'r1650', options = {} }, -- Example for Rust
        -- You can add additional languages as needed
      },
      auto_cleanup = true, -- Automatically clean up highlights and autocommands on buffer close
      highlight = {
        cursor = 'Visual', -- Highlight the cursor line, set to `false` to disable
        static = { '#222222', '#333333', '#444444', '#555555', '#444444', '#333333' }, -- Static highlighting colors
      },
      quickfix = {
        enable = true, -- Enable quickfix list population on errors
        auto_open = false, -- Do not auto-open the quickfix list
      },
      url = 'https://godbolt.org', -- Default Godbolt instance URL (can be changed)
    }

    -- Key mappings for convenience
    vim.api.nvim_set_keymap('n', '<leader>gb', ':Godbolt<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<leader>gb', ":'<,'>Godbolt<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>gC', ':GodboltCompiler g122<CR>', { noremap = true, silent = true }) -- Example for C++
  end,
}
