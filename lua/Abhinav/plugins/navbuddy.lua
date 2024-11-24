return {
  'SmiteshP/nvim-navbuddy',
  dependencies = {
    'neovim/nvim-lspconfig',
    'SmiteshP/nvim-navic',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>nv', '<cmd>Navbuddy<cr>', desc = 'Nav' },
  },
  config = function()
    local navbuddy = require 'nvim-navbuddy'
    local actions = require 'nvim-navbuddy.actions'

    navbuddy.setup {
      window = {
        border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' }, -- Rounded border style
        size = { height = '100%', width = '100%' }, -- Dynamic window size
        position = { row = '10%', col = '55%' }, -- Position with margins
        sections = {
          left = {
            size = '15%',
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' }, -- Left section border
          },
          mid = {
            size = '19%',
            border = nil,
          },
          right = {
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' }, -- Right section border
            preview = 'leaf',
          },
        },
      },
      node_markers = {
        enabled = true,
        icons = {
          leaf = '🌱', -- Leaf icon for leaf nodes
          leaf_selected = '🌿', -- Selected leaf icon
          branch = '🌳', -- Branch icon for branch nodes
        },
      },
      icons = {
        File = '📁 ',
        Module = '📦 ',
        Namespace = '🔗 ',
        Package = '📦 ',
        Class = '📚 ',
        Method = '🔧 ',
        Property = '🔑 ',
        Field = '🗄️ ',
        Constructor = '🔨 ',
        Enum = '🟡 ',
        Interface = '🔗 ',
        Function = '🔍 ',
        Variable = '🔤 ',
        Constant = '🔢 ',
        String = '💬 ',
        Number = '🔢 ',
        Boolean = '✅ ',
        Array = '📋 ',
        Object = '🧱 ',
        Key = '🔑 ',
        Null = '❌ ',
        EnumMember = '⚙️ ',
        Struct = '🗂️ ',
        Event = '⚡ ',
        Operator = '🔄 ',
        TypeParameter = '📋 ',
      },
      use_default_mappings = true,
      mappings = {
        ['<esc>'] = actions.close(),
        ['q'] = actions.close(),

        ['j'] = actions.next_sibling(),
        ['k'] = actions.previous_sibling(),

        ['h'] = actions.parent(),
        ['l'] = actions.children(),
        ['0'] = actions.root(),

        ['v'] = actions.visual_name(),
        ['V'] = actions.visual_scope(),

        ['y'] = actions.yank_name(),
        ['Y'] = actions.yank_scope(),

        ['i'] = actions.insert_name(),
        ['I'] = actions.insert_scope(),

        ['a'] = actions.append_name(),
        ['A'] = actions.append_scope(),

        ['r'] = actions.rename(),
        ['d'] = actions.delete(),

        ['f'] = actions.fold_create(),
        ['F'] = actions.fold_delete(),

        ['c'] = actions.comment(),

        ['<enter>'] = actions.select(),
        ['o'] = actions.select(),

        ['J'] = actions.move_down(),
        ['K'] = actions.move_up(),

        ['s'] = actions.toggle_preview(),

        ['<C-v>'] = actions.vsplit(),
        ['<C-s>'] = actions.hsplit(),

        ['t'] = actions.telescope {
          layout_config = {
            height = 0.60,
            width = 0.60,
            prompt_position = 'top',
            preview_width = 0.50,
          },
          layout_strategy = 'horizontal',
        },

        ['g?'] = actions.help(),
      },
      lsp = {
        auto_attach = true, -- Automatically attach to LSP clients
        preference = 'nvim_lsp',
      },
      source_buffer = {
        follow_node = true,
        highlight = true,
        reorient = 'smart',
        scrolloff = nil,
      },
      custom_hl_group = 'Visual', -- Set a custom highlight group
    }
  end,
}
