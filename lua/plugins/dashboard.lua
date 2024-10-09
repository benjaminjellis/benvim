return {

  {
    "nvimdev/dashboard-nvim",
    lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
    opts = function()
      local ivy = {
        [[        /^-^\        ]],
        [[       / o o \       ]],
        [[      /   Y   \      ]],
        [[      V \ v / V      ]],
        [[        / - \        ]],
        [[       /    |        ]],
        [[ (    /     |       ]],
        [[  ===/___) ||        ]],
      }
      local modularLogo = [[    ____  _______    _______   ____    _____  ___  ___      ___  __     ___      ___ 
   /   ")|   _  "\  /"     "| (  " \  (\"   \|"  \|"  \    /"  ||" \   |"  \    /"  |
  /. __/ (. |_)  :)(: ______)  \__. \ |.\\   \    |\   \  //  / ||  |   \   \  //   |
 // /    |:     \/  \/    |       ) :)|: \.   \\  | \\  \/. ./  |:  |   /\\  \/.    |
(: (___  (|  _  \\  // ___)_   __/ // |.  \    \. |  \.    //   |.  |  |: \.        |
 \     ) |: |_)  :)(:      "| /"   /  |    \    \ |   \\   /    /\  |\ |.  \    /:  |
  \"__/  (_______/  \_______)(____/    \___|\____\)    \__/    (__\_|_)|___|\__/|___|
                                                                                     ]]
      local twistedLogo = [[  __     _____     _____  __   __   __    _     _   __    __    __   
 /\_\  /\  __/\  /\_____\/_/\ /_/\ /\_\  /_/\ /\_\ /\_\  /_/\  /\_\  
( ( (  ) )(_ ) )( (_____/) ) )) ) \ ( (  ) ) ) ( ( \/_/  ) ) \/ ( (  
 \ \_\/ / __/ /  \ \__\ /_/ //_/   \ \_\/_/ / \ \_\ /\_\/_/ \  / \_\ 
 / / /\ \  _\ \  / /__/_\ \ \\ \ \   / /\ \ \_/ / // / /\ \ \\// / / 
( (_(  ) )(__) )( (_____\)_) ))_) \ (_(  \ \   / /( (_(  )_) )( (_(  
 \/_/  \/____\/  \/_____/\_\/ \_\/ \/_/   \_\_/_/  \/_/  \_\/  \/_/  ]]
      local logo = [[

░░██╗██████╗░███████╗██╗░░███╗░░██╗██╗░░░██╗██╗███╗░░░███╗
░██╔╝██╔══██╗██╔════╝╚██╗░████╗░██║██║░░░██║██║████╗░████║
██╔╝░██████╦╝█████╗░░░╚██╗██╔██╗██║╚██╗░██╔╝██║██╔████╔██║
╚██╗░██╔══██╗██╔══╝░░░██╔╝██║╚████║░╚████╔╝░██║██║╚██╔╝██║
░╚██╗██████╦╝███████╗██╔╝░██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║
░░╚═╝╚═════╝░╚══════╝╚═╝░░╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
        ]]

      logo = string.rep("\n", 8) .. modularLogo .. "\n\n"
      -- Convert the map table to a string
      local imageString = table.concat(ivy, "\n")

      -- Concatenate the logo and the map
      local fullDisplay = logo .. imageString .. "\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(fullDisplay, "\n"),
          -- stylua: ignore
          center = {
            { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
            { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
            { action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
            { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
            { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return {
              os.date("󱑎 %H:%M  󰃭 %a %d %b"),
              "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
            }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- open dashboard after closing lazy
      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end

      return opts
    end,
  },
}
