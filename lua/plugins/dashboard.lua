-- Header: braille art (left) + NEOVIM block letters (center) + braille art (right).
local neo = vim.split(
  vim.trim([[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]]),
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
table.remove(left, 1)

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
table.remove(right, 1)

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

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      row = 1, -- anchor to the top so the tall header isn't clipped when centered
      preset = {
        header = table.concat(lines, "\n"),
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
