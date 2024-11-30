return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed or {}, {
        "harper-ls",
      })
    end,
  },
  {
    "kamykn/spelunker.vim",
    lazy = false,
  },
}
