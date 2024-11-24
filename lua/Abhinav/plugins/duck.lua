return {
  'tamton-aquib/duck.nvim',
  Lazy = 'true',
  Event = 'VeryLazy',
  config = function()
    -- Define a table of emojis
    local emojis = { '🦆', '🐈', '🐕', '🐢', '🐇', '🐉', '🦄', '🐒', '🦖', '🦕' }

    -- Keybindings for hatch, cook, cook_all
    vim.keymap.set('n', '<leader>dd', function()
      -- Show a selection dialog for emojis
      vim.ui.select(emojis, {
        prompt = 'Choose an emoji to hatch:',
      }, function(choice)
        if choice then
          -- Hatch the selected emoji
          require('duck').hatch(choice)
        end
      end)
    end, {})

    vim.keymap.set('n', '<leader>dk', function()
      require('duck').cook()
    end, {})

    vim.keymap.set('n', '<leader>da', function()
      require('duck').cook_all()
    end, {})
  end,
}
