return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        jsonls = {},
        yamlls = {},
        harper_ls = {
          settings = {
            ["harper-ls"] = {
              linters = {
                sentence_capitalization = false,
                long_sentences = false,
              },
            },
          },
        },
      },
    },
  },
}
