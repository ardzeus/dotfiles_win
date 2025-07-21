local wezterm = require("wezterm")
local kanso_ink = require("kanso-ink")

return {
  -- color_scheme = "kanso-ink",
  colors = kanso_ink.colors,
  default_prog = { "wsl.exe", "~" },
  font = wezterm.font("JetBrainsMonoNL Nerd Font", {weight="Regular"}),
  font_size = 10.0,
  enable_tab_bar = true,
  --disable_default_key_bindings = true,
  default_cursor_style = "BlinkingBar",

  -- Launcher Menu Configuration
    launch_menu = {
    {
      set_environment_variables = { WEZTERM_TAB_TITLE = 'Rauman VM' },
      label = 'Rauman VM',
      args = {'ssh', 'arto@192.168.200.61'}, -- Command to run when selected
    },
    {
      label = 'WSL',
      -- gargs = {'wsl.exe', '--distribution', 'Ubuntu', '--user', 'arto'},
      args = {'wsl.exe', '~', 'zsh'},
    },
    {
      label = 'Windows PowerShell',
      args = {'powershell.exe', '-NoLogo'},
      set_environment_variables = { WEZTERM_TAB_TITLE = 'PowerShell' },
    },
    {
      label = 'Prod - ouman-connect',
      args = {'ssh', 'ouman@10.1.1.11', '-i', 'C:\\Users\\arto.tolonen\\.ssh\\prod'},
    },
  },

  -- Key binding to open the launch menu
  keys = {
    {
      key = 'p',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.ShowLauncherArgs({ flags = 'FUZZY|LAUNCH_MENU_ITEMS' }),
    },
  },
}