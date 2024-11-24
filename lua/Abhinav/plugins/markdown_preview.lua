return {
  'OXY2DEV/markview.nvim',
  lazy = false, -- Recommended
  -- ft = "markdown" -- Uncomment if you decide to lazy-load by file type

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    require('markview').setup {
      -- Buffer types to ignore
      buf_ignore = { 'nofile' },

      -- Delay in milliseconds before a redraw occurs (after an event is triggered)
      debounce = 50,

      -- Filetypes where the plugin is enabled
      filetypes = { 'markdown', 'quarto', 'rmd' },

      -- Highlight groups to use: "dynamic" | "light" | "dark"
      highlight_groups = 'dynamic',

      -- Modes where hybrid mode is enabled
      hybrid_modes = nil,

      -- Tree-sitter query injections
      injections = {},

      -- Initial plugin state; true = show preview, false = don't show preview
      initial_state = true,

      -- Max file size that is rendered entirely
      max_file_length = 1000,

      -- Modes where preview is shown
      modes = { 'n', 'no', 'c' },

      -- Lines from the cursor to draw when the file is too large
      render_distance = 100,

      -- Window configuration for split view
      split_conf = {},

      -- Rendering-related configurations
      block_quotes = {},
      callbacks = {},
      checkboxes = {},
      code_blocks = {},
      escaped = {},
      footnotes = {},
      headings = {},
      horizontal_rules = {},
      html = {},
      inline_codes = {},
      links = {},
      list_items = {},
      tables = {},
      latex = {
        enable = true,

        -- Bracket conceal configuration
        brackets = {
          enable = true,
          hl = '@punctuation.brackets',
        },

        -- LaTeX block configuration
        block = {
          enable = true,
          hl = 'Code',
          text = { ' LaTeX ', 'Special' },
        },

        -- Inline LaTeX configuration
        inline = {
          enable = true,
        },

        -- Operator configuration, e.g., "\frac{1}{2}"
        operators = {
          enable = true,
          configs = {
            sin = {
              operator = {
                conceal = '',
                virt_text = { { '𝚜𝚒𝚗', 'Special' } },
              },
              args = {
                {
                  before = {},
                  after = {},
                  scope = {},
                },
              },
            },
          },
        },

        -- LaTeX symbol configuration
        symbols = {
          enable = true,
          hl = '@operator.latex',
          overwrite = {
            today = function(buffer)
              return os.date '%d %B, %Y'
            end,
          },
          groups = {
            {
              match = { 'lim', 'today' },
              hl = 'Special',
            },
          },
        },

        -- Subscript and superscript configurations
        subscript = {
          enable = true,
          hl = 'MarkviewLatexSubscript',
        },
        superscript = {
          enable = true,
          hl = 'MarkviewLatexSuperscript',
        },
      },
    }
  end,
}
