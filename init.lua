-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- Remove comment to enable inlay hints by default
vim.keymap.set('', '<F1>', '<Nop>', { noremap = true, silent = true })

if vim.g.neovide then
  vim.o.guifont = 'FiraCode Nerd Font Mono:h14' -- text below applies for VimScript
  vim.g.neovide_scale_factor = 1.0
  vim.opt.linespace = 0
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format('%x', math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.8
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = '#0f1117' .. alpha()
  vim.g.neovide_window_blurred = true
  vim.g.neovide_position_animation_length = 0.15
  vim.g.neovide_scroll_animation_far_lines = 1
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_cursor_trail_size = 0.8
  vim.g.neovide_cursor_vfx_mode = 'railgun'
  vim.g.neovide_cursor_vfx_particle_lifetime = 5.2
  vim.g.neovide_cursor_vfx_particle_density = 100.0
  vim.g.neovide_cursor_vfx_particle_phase = 130.5
end
--vim.lsp.inlay_hint.enable()
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
