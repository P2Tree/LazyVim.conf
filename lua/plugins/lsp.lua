return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        ["*"] = {
          keys = {
            { "K", false },
            {
              "<leader>k",
              function()
                return vim.lsp.buf.hover()
              end,
              desc = "Hover",
            },
            {
              "gk",
              function()
                return vim.lsp.buf.hover()
              end,
              desc = "Hover",
            },
          },
        },
      },
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
}
