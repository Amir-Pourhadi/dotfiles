-- ---------------- 🍿 Snacks ----------------

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = require("plugins.snacks"),
  keys = require("plugins.snacks.keymaps"),
}

