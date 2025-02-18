return {
  { "neanias/everforest-nvim", name = "everforest", opts = { background = "hard", ui_contrast = "high" } },
  {
    "benjaminjellis/rose-pine",
    name = "rose-pine",
    opts = {
      variant = "main",
      styles = {
        transparency = true,
      },
      -- these options make the theme transparent
      disable_background = true,
      disable_float_background = true,
      highlight_groups = {
        Normal = { bg = "none" },
      },
    },
  },
  { "catppuccin/nvim", enabled = false },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
