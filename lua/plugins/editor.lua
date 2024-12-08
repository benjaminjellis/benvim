return {
  -- provides integration with wexzterm multiplexing
  { "mrjones2014/smart-splits.nvim" },
  -- shift neo-tree to appear on right hand side
  { "nvim-neo-tree/neo-tree.nvim", opts = { window = { position = "right" } } },
  -- turn off unused snippet plugins
  {
    "garymjr/nvim-snippets",
    enabled = false,
  },
  { "rafamadriz/friendly-snippets", enabled = false },
  -- tree sitter context
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    opts = function()
      local tsc = require("treesitter-context")
      Snacks.toggle({
        name = "Treesitter Context",
        get = tsc.enabled,
        set = function(state)
          if state then
            tsc.enable()
          else
            tsc.disable()
          end
        end,
      }):map("<leader>ut")
      return { mode = "cursor", max_lines = 3 }
    end,
  },
}
