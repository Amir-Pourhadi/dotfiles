local wezterm = require("wezterm")
local utils = {}

-- Return a random image path like "C:/path/3.jpg" with numbers between min and max
function utils.random_image_path(max)
  if not utils._seeded then
    math.randomseed(os.time())
    utils._seeded = true
  end

  return string.format("%s/images/%d.jpg", wezterm.config_dir, math.random(1, max))
end

return utils

