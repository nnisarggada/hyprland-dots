if vim.g.neovide then
  vim.keymap.set("i", "<C-v>", "<C-R>+")
  vim.keymap.set("i", "<C-S-v>", "<C-R>+")

  vim.g.neovide_padding_bottom = 10
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 10

  vim.g.neovide_fullscreen = true

  vim.g.neovide_hide_mouse_when_typing = true

  vim.g.neovide_cursor_antialiasing = true

  vim.g.neovide_cursor_trail_size = 0.8

  vim.g.neovide_cursor_animate_command_line = true

  vim.g.neovide_cursor_vfx_mode = "railgun"
end
