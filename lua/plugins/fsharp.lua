return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "fsautocomplete",
      },
    },
  },
  {
    "ionide/Ionide-vim",
    event = "LazyFile",
  },
}
