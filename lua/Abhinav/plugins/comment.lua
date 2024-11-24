-- Inside your Lazy.nvim setup file
return {
  -- Other plugin setups

  {
    'numToStr/Comment.nvim',
    opts = {
      -- Add a space between comment and the line
      padding = true,

      -- Whether the cursor should stay at its position after commenting
      sticky = true,

      -- Lines to be ignored while (un)commenting
      ignore = nil,

      -- Mappings for toggling comments
      toggler = {
        line = 'gcc', -- Line-comment toggle keymap
        block = 'gbc', -- Block-comment toggle keymap
      },

      -- Mappings for operator-pending in NORMAL and VISUAL mode
      opleader = {
        line = 'gc', -- Line-comment keymap
        block = 'gb', -- Block-comment keymap
      },

      -- Extra mappings
      extra = {
        above = 'gcO', -- Add comment on the line above
        below = 'gco', -- Add comment on the line below
        eol = 'gcA', -- Add comment at the end of the current line
      },

      -- Enable keybindings for basic and extra mappings
      mappings = {
        basic = true, -- Enable `gcc`, `gbc`, `gc[count]{motion}`, etc.
        extra = true, -- Enable extra mappings (`gco`, `gcO`, `gcA`)
      },

      -- Function to call before (un)comment
      pre_hook = nil,

      -- Function to call after (un)comment
      post_hook = nil,
    },
    config = function(_, opts)
      require('Comment').setup(opts)
    end,
  },

  -- Other plugin setups
}
