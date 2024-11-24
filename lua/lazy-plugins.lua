--    :Lazy
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Use `opts = {}` to force a plugin to be loaded.
  --  require 'Abhinav.plugins.bufferline',
  --  require 'Abhinav.plugins.clangd',
  require 'Abhinav.plugins.fzflua',
  require 'Abhinav.plugins.latex',
  --  require 'Abhinav.plugins.haskell',
  --  require 'Abhinav.plugins.inlay',
  require 'Abhinav.plugins.godbolt',
  require 'Abhinav.plugins.navbuddy',
  --  require 'Abhinav.plugins.hlchunk',
  --  require 'Abhinav.plugins.colorizer',
  --  require 'Abhinav.plugins.lualine',
  require 'Abhinav.plugins.noice',
  require 'Abhinav.plugins.yanky',
  require 'Abhinav.plugins.flash',
  --  require 'Abhinav.plugins.heirline',
  require 'Abhinav.plugins.toggleterm',
  require 'Abhinav.plugins.minty',
  require 'Abhinav.plugins.gitsigns',
  require 'Abhinav.plugins.which-key',

  require 'Abhinav.plugins.telescope',
  require 'Abhinav.plugins.lspconfig',
  require 'Abhinav.plugins.conform',
  require 'Abhinav.plugins.cmp',
  require 'Abhinav.plugins.tokyonight',
  require 'Abhinav.plugins.todo-comments',
  --  require 'Abhinav.plugins.mini',
  require 'Abhinav.plugins.trouble',
  require 'Abhinav.plugins.treesitter',
  require 'Abhinav.plugins.cheatsheet',
  require 'Abhinav.plugins.typewriter',
  require 'Abhinav.plugins.markdown_preview',

  --  require 'Abhinav.plugins.duck',
  --require 'Abhinav.plugins.typeit',
  require 'Abhinav.plugins.comment',
  require 'Abhinav.plugins.debug',
  --  require 'Abhinav.plugins.indent_line',
  require 'Abhinav.plugins.lint',
  require 'Abhinav.plugins.autopairs',
  -- require 'Abhinav.plugins.neo-tree',
  --  require 'Abhinav.plugins.precognition',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
