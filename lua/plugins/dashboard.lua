-- Header: braille art (left) + NEOVIM block letters (center) + braille art (right).
-- Don't vim.trim(): it strips the whole block's leading whitespace, which eats
-- the dot line's leading spaces and shoves the "i" dot to column 1 (over the n).
local neo = vim.split(
  [[
                                           ███
                                          ▒▒▒
 ████████    ██████   ██████  █████ █████ ████  █████████████
▒▒███▒▒███  ███▒▒███ ███▒▒███▒▒███ ▒▒███ ▒▒███ ▒▒███▒▒███▒▒███
 ▒███ ▒███ ▒███████ ▒███ ▒███ ▒███  ▒███  ▒███  ▒███ ▒███ ▒███
 ▒███ ▒███ ▒███▒▒▒  ▒███ ▒███ ▒▒███ ███   ▒███  ▒███ ▒███ ▒███
 ████ █████▒▒██████ ▒▒██████   ▒▒█████    █████ █████▒███ █████
▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒   ▒▒▒▒▒▒     ▒▒▒▒▒    ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒ ▒▒▒▒▒  ]],
  "\n"
)

local left = vim.split(
  [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⡀⠀⠀⠀⠀⠀
⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢛⢿⣿⡄⠀⠀⠀⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣫⣭⣭⡛⢿⣿⣿⣿⣿⣿⡿⣋⣵⣾⡿⠓⠹⡇⠀⠀⠀⠀
⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠈⢻⣿⣿⣿⡆⡝⣿⣿⣿⡏⣼⣿⣿⣿⣇⡀⢀⡁⠀⠀⠀⠀
⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⢰⣶⣿⣿⣿⣿⡿⣣⣿⣿⣿⣷⡸⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀
⠀⠀⠀⠈⢿⣿⣿⣿⣿⢻⣿⣿⡘⢿⣿⣿⢟⣩⣾⣿⣿⣿⣿⣿⡇⣌⠻⢿⣿⣿⣿⢏⡀⠀⠀⠀
⠀⠀⠀⠀⠈⢻⣿⣿⣿⢸⣿⣿⣿⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⡻⣶⣦⣬⣵⣾⠃⠀⠀⠀
⠀⠀⠀⠀⠀⠈⣿⣿⣿⡎⣿⣿⣿⣿⣿⣿⣿⣿⣿⡱⣾⣿⠿⣿⣿⡟⣱⣿⣿⣿⣿⠇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⣿⣷⡜⢿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣷⠶⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣮⡻⣿⣿⣿⣿⣿⡇⢻⣿⣿⣿⣿⡿⢰⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣦⣝⢿⣿⣿⣿⣤⡙⠻⠿⠿⢃⣼⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⠿⣿⣿⣿⣿⣶⣾⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣿⣿⣿⢟⣫⣿⣿⣿⣿⣿⣿⣿⣷⣮⣭⣛⣛⣛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢠⣾⣿⣿⡿⣣⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  "\n"
)

local right = vim.split(
  [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⠤⠤⣄⣠⠤⠴⠦⠤⢤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⠛⠁⠀⠀⢁⣀⣀⠀⡀⠀⠀⠉⠙⢦⣀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠈⠳⣄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣰⠚⠀⠀⠀⣠⡜⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⡀⠀⠈⢧⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣰⠃⠀⠀⢠⣾⣿⢿⡟⠚⠛⠺⠿⢿⣿⣿⣿⣿⣿⣿⣿⣌⣂⠀⠈⢷⠀⠀
⠀⠀⠀⠀⠀⢠⠏⠀⠀⠀⣿⣿⣿⣾⣿⣿⣿⣿⣶⣤⣏⣼⣿⣿⣿⡛⡛⣛⡛⢃⠀⠈⡇⠀
⠀⠀⠀⠀⠀⣼⠀⠀⢀⠘⣉⢛⠛⡛⠻⢋⣭⣭⣉⣛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⣼⠃⠀
⠀⠀⠀⠀⠀⣏⠀⢤⢹⣴⣿⣿⣿⣿⣿⣌⠻⢿⡿⡿⠇⣠⡦⠉⣴⣶⣶⣬⠹⠿⠇⣹⠀⠀
⠀⠀⠀⠀⣸⠇⠀⢐⢾⣿⣿⣿⣿⣿⣟⣿⣿⣶⣶⣶⣿⣭⣯⣴⣬⣍⣉⣥⣾⣷⡦⢸⡆⠀
⠀⠀⢀⡞⠁⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⠽⠝⠿⢽⢿⣿⣿⣿⣿⣿⣿⠠⡇⠀
⠀⠀⡟⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣷⣾⣿⣿⣾⣿⣿⣿⣿⣿⣿⡟⢸⠇⠀
⠀⢸⢑⠀⠀⠀⠀⢿⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣸⠀⠀
⠀⢸⡂⠀⠀⠀⠀⠈⢷⣻⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⡿⢿⢁⡞⠀⠀
⠀⠀⡇⠀⠀⠀⠀⠈⣦⡙⠪⣿⣿⡻⣿⡿⣿⣿⣿⣮⠊⠎⢛⢋⣡⣿⣿⢿⠕⢃⡞⠀⠀⠀
⠀⠀⢻⡀⠀⠀⠀⠀⣿⠉⠳⣄⣙⠛⠛⠯⠿⣼⣿⣻⣿⢿⣛⣿⣻⢟⡟⢚⣡⠾⠃⠀⠀⠀
⠀⠀⠈⣧⠀⠀⠀⠀⡏⠀⠀⠀⠉⠙⠛⠓⠲⠦⠤⠤⢤⣬⣬⣌⣬⣤⠶⠋⠁⠀⠀⠀⠀⠀
⠀⠀⠀⡟⠀⠀⠀⣨⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣼⢃⠀⠀⣴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣹⠋⣠⠼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠳⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  "\n"
)

local function maxwidth(t)
  local w = 0
  for _, l in ipairs(t) do
    w = math.max(w, vim.fn.strdisplaywidth(l))
  end
  return w
end

local left_w = maxwidth(left)
local neo_w = maxwidth(neo)
local gap = "   "
local offset = math.floor((#left - #neo) / 2) -- vertically center NEOVIM
local n = math.max(#left, #right, #neo + offset)

local lines = {}
for i = 1, n do
  local l = left[i] or ""
  l = l .. string.rep(" ", left_w - vim.fn.strdisplaywidth(l)) .. gap

  local ni = i - offset
  local mid = (ni >= 1 and ni <= #neo) and neo[ni] or ""
  l = l .. mid .. string.rep(" ", neo_w - vim.fn.strdisplaywidth(mid)) .. gap

  l = l .. (right[i] or "")
  lines[i] = l
end

-- snacks centers each line by its own width; right-pad to a uniform width so
-- everything stays aligned across rows.
local max_w = maxwidth(lines)
for i, l in ipairs(lines) do
  lines[i] = l .. string.rep(" ", max_w - vim.fn.strdisplaywidth(l))
end

-- The commands hidden behind "Options".
local commands = {
  { desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
  { desc = "New File", action = ":ene | startinsert" },
  { desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
  { desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
  { desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
  { desc = "Restore Session", action = ":lua require('persistence').load()" },
  { desc = "Projects", action = ":lua Snacks.picker.projects()" },
  { desc = "Lazy Extras", action = ":LazyExtras" },
  { desc = "Lazy", action = ":Lazy" },
}

local function open_options()
  vim.ui.select(commands, {
    prompt = "Options",
    format_item = function(item)
      return item.desc
    end,
  }, function(choice)
    if not choice then
      return
    end
    if type(choice.action) == "function" then
      choice.action()
    else
      vim.cmd(choice.action:gsub("^:", ""))
    end
  end)
end

-- Color the whole dashboard (header + keys/icons/footer/etc) with the same grey.
local grey = "#a6adc8"
local function set_header_hl()
  for _, g in ipairs({
    "SnacksDashboardHeader",
    "SnacksDashboardTitle",
    "SnacksDashboardDesc",
    "SnacksDashboardKey",
    "SnacksDashboardIcon",
    "SnacksDashboardDir",
    "SnacksDashboardFile",
    "SnacksDashboardFooter",
    "SnacksDashboardSpecial",
  }) do
    vim.api.nvim_set_hl(0, g, { fg = grey })
  end
end
set_header_hl()
vim.api.nvim_create_autocmd("ColorScheme", { callback = set_header_hl })

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat(lines, "\n"),
        keys = {
          { icon = " ", key = "o", desc = "Options", action = open_options },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
