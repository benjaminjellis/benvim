-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- TODO: figure out why this only seems to work here
require("lspconfig").typos_lsp.setup({
  init_options = {
    -- Equivalent to the typos `--config` cli argument.
    config = "~/.config/typos.toml",
    -- How typos are rendered in the editor, can be one of an Error, Warning, Info or Hint.
    -- Defaults to error.
    diagnosticSeverity = "Hint",
    settings = {
      -- Another way to specify words to ignore
      ignore_words = { "noice" },
    },
  },
})
