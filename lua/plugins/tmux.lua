return {
  {
    "aserowy/tmux.nvim",
    config = function()
      require("tmux").setup({
        copy_sync = {
          enable = true,
          ignore_buffers = {
            empty = false,
          },
          sync_clipboard = true,
        },
        navigation = {
          enable_default_keybindings = true,
          cycle_navigation = false,
        },
        resize = {
          enable_default_keybindings = true,
          resize_step_x = 1,
          resize_step_y = 1,
        },
      })
    end,
  },
}
