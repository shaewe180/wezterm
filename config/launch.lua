local platform = require("utils.platform")()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { "powershell" }
  options.launch_menu = {
    { label = " Cmd", args = { "cmd" } },
  }
elseif platform.is_mac then
  options.default_prog = { "zsh", "--login" }
  options.launch_menu = {
    { label = " Bash", args = { "bash", "--login" } },
    { label = " Zsh", args = { "zsh", "--login" } },
  }
elseif platform.is_linux then
  options.default_prog = { "bash", "--login" }
  options.launch_menu = {
    { label = " Bash", args = { "bash", "--login" } },
  }
end

return options
