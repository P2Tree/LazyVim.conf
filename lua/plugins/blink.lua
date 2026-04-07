return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = {
          "select_and_accept",
          "fallback",
        },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "fallback" },
      },
    },
  },
}
