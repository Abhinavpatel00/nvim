return {
  'jaimecgomezz/here.term',
  branch = 'lazy-load',
  opts = {},
  keys = {
    {
      '<C-;>',
      function()
        require('here-term').toggle_terminal()
      end,
      desc = 'Toggle terminal',
    },
    {
      '<C-S-;>',
      function()
        require('here-term').kill_terminal()
      end,
      desc = 'Kill terminal',
    },
  },
}
