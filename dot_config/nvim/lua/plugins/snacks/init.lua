-- ---------------- 🍿 Snacks Config ----------------

return {
  -- Performance
  bigfile = require("plugins.snacks.performance").bigfile,
  quickfile = require("plugins.snacks.performance").quickfile,
  zen = require("plugins.snacks.performance").zen,

  -- Editor
  notifier = require("plugins.snacks.editor").notifier,
  input = require("plugins.snacks.editor").input,
  indent = require("plugins.snacks.editor").indent,
  scope = require("plugins.snacks.editor").scope,
  words = require("plugins.snacks.editor").words,
  rename = require("plugins.snacks.editor").rename,
  scratch = require("plugins.snacks.editor").scratch,

  -- UI
  dashboard = require("plugins.snacks.dashboard"),
  picker = require("plugins.snacks.picker"),
  explorer = require("plugins.snacks.explorer"),

  -- Terminal
  terminal = require("plugins.snacks.terminal"),

  -- Git
  lazygit = require("plugins.snacks.git").lazygit,
  gitbrowse = require("plugins.snacks.git").gitbrowse,
}
