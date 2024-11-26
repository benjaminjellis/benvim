return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      -- "mfussenegger/nvim-dap-python",
      -- -- stylua: ignore
      -- keys = {
      --   { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      --   { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
      -- },
      -- config = function()
      --   require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/bin/python"))
      --   table.insert(require("dap").configurations.python, {
      --     justMyCode = false,
      --   })
      -- end,
    },
  },
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
