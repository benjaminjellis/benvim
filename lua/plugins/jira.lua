local jira_email = os.getenv("JIRA_EMAIL")
local jira_domain = os.getenv("JIRA_DOMAIN")
local jira_api_token = os.getenv("JIRA_API_TOKEN")
local jira_project_key = os.getenv("JIRA_PROJECT_KEY")

local function maybe_set_up_jira()
  if jira_email and jira_domain and jira_api_token and jira_project_key then
    return {
      "janBorowy/jirac.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "grapp-dev/nui-components.nvim",
        "nvim-lua/plenary.nvim",
      },
      opts = {
        email = jira_email,
        jira_domain = jira_domain,
        api_key = jira_api_token,
        config = {
          default_project_key = jira_project_key,
          keymaps = {},
          window_width = 150,
          window_height = 50,
        },
      },
    }
  else
    vim.notify(
      "Expecting env vars to be set: JIRA_EMAIL, JIRA_DOMAIN, JIRA_API_TOKEN, JIRA_PROJECT_KEY. One was not set",
      "warn"
    )
    return {}
  end
end

return {
  maybe_set_up_jira(),
}
