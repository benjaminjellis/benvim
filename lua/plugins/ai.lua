return {
  "frankroeder/parrot.nvim",
  event = "VeryLazy",
  version = "1.8.0",
  dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  opts = { providers = { gemini = {
    api_key = os.getenv("GEMINI_API_KEY"),
  } } },
  keys = {
    { "<leader>ac", "<cmd>PrtChatToggle<cr>", desc = "🦜 Open Parrot Chat" },
    { "<leader>ar", "<cmd>PrtChatRespond<cr>", desc = "🦜 Respond to Parrot Chat" },
    { "<leader>as", "<cmd>PrtChatStop<cr>", desc = "🦜 Interrupt ongoing Parrot respond" },
    { "<leader>ad", "<cmd>PrtChatDelete<cr>", desc = "🦜 Delete the current chat file" },
    { "<leader>aa", ":PrtAppend ", desc = "🦜 Use Parrot to append code", mode = { "v" } },
    { "<leader>ar", ":PrtRewrite ", desc = "🦜 Use Parrot to rewrite code", mode = { "v" } },
    { "<leader>ap", ":PrtPrepend", desc = "🦜 Use Parrot to prepend code", mode = { "v" } },
    {
      "<leader>ad",
      ":PrtPrepend write docs for this function or type<cr>",
      desc = "🦜 Use Parrot to write docs for function or type",
      mode = { "v" },
    },
  },
}
