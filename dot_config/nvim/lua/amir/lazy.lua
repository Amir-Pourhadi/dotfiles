-- 🌟 Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if not installed
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazy_repo = "https://github.com/folke/lazy.nvim.git"
  local output = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, lazypath })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "❌ Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { output, "WarningMsg" },
      { "\nPress any key to exit...", "Normal" },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Prepend lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)

-- ⚡ Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Import plugins from lua/plugins/init.lua
    { import = "plugins" },
  },
  -- 🎨 Default colorscheme when installing plugins
  install = { colorscheme = { "habamax" } },
  -- 🔄 Auto-check for plugin updates
  checker = { enabled = true },
  -- Additional optional settings can go here
})

