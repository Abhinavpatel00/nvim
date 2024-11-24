return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          -- Build Step is needed for regex support in snippets.
          -- This step is not supported in many Windows environments.
          -- Remove the below condition to re-enable on Windows.
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          -- `friendly-snippets` contains a variety of premade snippets.
          {
            'mrcjkb/haskell-snippets.nvim',
          },
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
      },
      {
        'evesdropper/luasnip-latex-snippets.nvim',
      },
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
    },
    config = function()
      -- See `:help cmp`
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      luasnip.config.setup {}
      local haskell_snippets = require('haskell-snippets').all
      luasnip.add_snippets('haskell', haskell_snippets, { key = 'haskell' })
      cmp.setup {
        sorting = {
          comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.recently_used,
            --            require 'clangd_extensions.cmp_scores',
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
      }

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = 'menu,menuone,noinsert' },

        -- Key mappings for autocompletion and snippet navigation
        mapping = cmp.mapping.preset.insert {
          -- Scroll the documentation window back/forward
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),

          -- Accept completion and move to the next placeholder in snippets
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),

          -- Manually trigger completion
          ['<C-Space>'] = cmp.mapping.complete(),

          -- Luasnip navigation
          ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' }),
        },

        -- Define sources for completion
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        },
      }

      -- Additional Luasnip keymaps for custom functionality
      vim.keymap.set({ 'i', 's' }, '<C-K>', function()
        luasnip.expand()
      end, { silent = true })
      vim.keymap.set({ 'i', 's' }, '<C-L>', function()
        luasnip.jump(1)
      end, { silent = true })
      vim.keymap.set({ 'i', 's' }, '<C-J>', function()
        luasnip.jump(-1)
      end, { silent = true })
      vim.keymap.set({ 'i', 's' }, '<C-E>', function()
        if luasnip.choice_active() then
          luasnip.change_choice(1)
        end
      end, { silent = true })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
