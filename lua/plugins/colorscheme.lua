return {
  {
    "benjaminjellis/rose-pine",
    name = "rose-pine",

    opts = {
      variant = "main",
      styles = {
        transparency = false,
      },
      -- these options make the theme transparent
      -- disable_background = true,
      -- disable_float_background = true,
      -- highlight_groups = {
      --   Normal = { bg = "none" },
      -- },
    },
  },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  {
    "benjaminjellis/citrusdream.nvim",
    name = "citrusdream",
    enabled = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
