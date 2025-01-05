local jiraEmail = os.getenv("JIRA_EMAIL")
local jiraDomain = os.getenv("JIRA_DOMAIN")
local jiraApiToken = os.getenv("JIRA_API_TOKEN")
local jiraProjectKey = os.getenv("JIRA_PROJECT_KEY")

local function maybeSetUpJira()
  if jiraEmail and jiraDomain and jiraApiToken and jiraProjectKey then
    return {
      "janBorowy/jirac.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "grapp-dev/nui-components.nvim",
        "nvim-lua/plenary.nvim",
      },
      opts = {
        email = jiraEmail,
        jira_domain = jiraDomain,
        api_key = jiraApiToken,
        config = {
          default_project_key = jiraProjectKey,
          keymaps = {},
          window_width = 150,
          window_height = 50,
        },
      },
    }
  else
    -- vim.notify(
    --   "Expecting env vars to be set: JIRA_EMAIL, JIRA_DOMAIN, JIRA_API_TOKEN, JIRA_PROJECT_KEY. One was not set",
    --   "warn"
    -- )
    return {}
  end
end

return {
  maybeSetUpJira(),
}
