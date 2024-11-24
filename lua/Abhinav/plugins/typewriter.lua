return {
  'v1nh1shungry/typewriter.nvim',
  keys = {
    {
      '<Leader>uk',
      function()
        require('typewriter').toggle()
      end,
      desc = 'Toggle typewriter',
    },
  },
  lazy = true,
  opts = {},
  config = function()
    require('typewriter').setup {
      enabled = false, -- Enable typewriter when entering Neovim
      volume = 100, -- Set volume for the typewriter sound
      libs = {
        sdl = nil, -- Optional: specify path to libSDL2.so if not found automatically
        mixer = nil, -- Optional: specify path to libSDL2_mixer.so if not found automatically
      },
    }
  end,
}
