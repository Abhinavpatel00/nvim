return {
  'Piotr1215/typeit.nvim',
  config = function()
    require('typeit').setup {
      default_speed = 30, -- Default typing speed in milliseconds
      default_pause = 'line', -- Default pause behavior ('line' or 'paragraph')
    }
  end,
}
-- other plugins can go here
