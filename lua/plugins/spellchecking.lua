return {
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     vim.list_extend(opts.ensure_installed or {}, { "typos-lsp" })
  --   end,
  -- },
  {
    "williamboman/mason.nvim",
    lazy = true,
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "harper-ls" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    opts = {
      servers = {
        harper_ls = {

          settings = {
            ["harper-ls"] = {
              userDictPath = "",
              fileDictPath = "",
              linters = {
                SpellCheck = true,
                SpelledNumbers = false,
                AnA = true,
                SentenceCapitalization = false,
                UnclosedQuotes = true,
                WrongQuotes = false,
                LongSentences = true,
                RepeatedWords = true,
                Spaces = true,
                Matcher = true,
                CorrectNumberSuffix = true,
              },
              codeActions = {
                ForceStable = false,
              },
              markdown = {
                IgnoreLinkTitle = false,
              },
              diagnosticSeverity = "hint",
              isolateEnglish = false,
              dialect = "British",
              maxFileLength = 120000,
            },
          },
        },
      },
    },
  },
}
