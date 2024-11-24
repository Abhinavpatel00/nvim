return {
  'shellRaining/hlchunk.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('hlchunk').setup {
      chunk = {
        enable = true,
        chars = {
          horizontal_line = '═', -- Double horizontal line for chunk borders
          vertical_line = '║', -- Double vertical line for chunk borders
          left_top = '╔', -- Thick square top-left corner
          left_bottom = '╚', -- Thick square bottom-left corner
          right_arrow = '►', -- Solid triangle for chunk end
          left_arrow = '►',
        },
        style = {
          { fg = '#00ffff', bold = true }, -- Gradient for chunks
        },
        use_treesitter = true, -- Optimized for larger files
        error_sign = true, -- Highlight chunk errors
      },
      -- indent = {
      --   enable = true,
      --   chars = { '↕' }, -- { '⤒', '⤓', '⤒' }, -- Thinner indent guides
      --   style = {
      --     { fg = '#33ff99' }, -- Light green for thinner indent lines
      --   },
      --   use_treesitter = true, -- Accurate indentations
      -- },
      indent = {
        enable = true,
        chars = { '⤒', '⤓', '⤒', '│', '¦', '┆', '┊' },
        style = {
          '#FF6F91',
          '#FF9671',
          '#FFC75F',
          '#F9F871',
          '#845EC2',
          '#D65DB1',
          '#00C9A7',
          '#FF7C78',
          '#FFD700',
          '#32CD32',
          '#00BFFF',
          '#1E90FF',
          '#9370DB',
          '#FF4500',
          '#FC913A',
          '#A8E0A8',
          '#FFFFFF',
        },
        use_treesitter = true,
      },
      blank = {
        enable = false, -- Keep blank lines minimal
      },
      line_num = {
        enable = true,
        use_treesitter = true,
        style = {
          { fg = '#33ffcc', bold = false }, -- Thinner line numbers
        },
      },
    }
  end,
}
