return {
  -- Active indent guide and indent text objects. When you're browsing
  -- code, this highlights the current level of indentation, and animates
  -- the highlighting.
  {
    "echasnovski/mini.indentscope",
    version = "0.14.0",
    event = "LazyFile",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "Trouble",
          "alpha",
          "dashboard",
          "fzf",
          "help",
          "lazy",
          "mason",
          "neo-tree",
          "notify",
          "snacks_notif",
          "snacks_terminal",
          "snacks_win",
          "toggleterm",
          "trouble",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "LazyFile",
    opts = {
      scope = { enabled = false },
    },
  },
}
