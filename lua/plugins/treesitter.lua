return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tax and treesitter
      vim.list_extend(opts.ensure_installed, {
        "rust",
        "python",
        "ocaml",
        "haskell",
        "json",
      })
    end,
  },
}
