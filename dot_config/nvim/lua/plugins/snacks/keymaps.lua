-- ---------------- 󰌌  Snacks Keymaps ----------------
-- lazy.nvim `keys` spec for folke/snacks.nvim.
-- Consumed by lua/plugins/ui/snacks.lua as `keys = require(...)`.
--
-- Leader groups:
--   f  files        s  search        g  git
--   x  diagnostics  u  ui            t  terminal
--   z  zen          n  scratch/notes e  explorer (ungrouped, single key)

return {
  -- ---------------- 󰍉  Smart Find (ungrouped) ----------------
  {
    "<leader><space>",
    function() Snacks.picker.smart() end,
    desc = "Smart Find Files",
  },

  -- ---------------- 📁  Files ----------------
  {
    "<leader>ff",
    function() Snacks.picker.files() end,
    desc = "Find Files",
  },
  {
    "<leader>fr",
    function() Snacks.picker.recent() end,
    desc = "Recent Files",
  },
  {
    "<leader>fp",
    function() Snacks.picker.projects() end,
    desc = "Projects",
  },
  {
    "<leader>fc",
    function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,
    desc = "Config Files",
  },

  -- ---------------- 🔍  Search ----------------
  {
    "<leader>sg",
    function() Snacks.picker.grep() end,
    desc = "Live Grep",
  },
  {
    "<leader>sw",
    function() Snacks.picker.grep_word() end,
    mode = { "n", "x" },
    desc = "Word/Selection Under Cursor",
  },
  {
    "<leader>sb",
    function() Snacks.picker.buffers() end,
    desc = "Buffers",
  },
  {
    "<leader>sh",
    function() Snacks.picker.help() end,
    desc = "Help Pages",
  },
  {
    "<leader>sk",
    function() Snacks.picker.keymaps() end,
    desc = "Keymaps",
  },
  {
    "<leader>sc",
    function() Snacks.picker.commands() end,
    desc = "Commands",
  },
  {
    "<leader>s:",
    function() Snacks.picker.command_history() end,
    desc = "Command History",
  },
  {
    "<leader>ss",
    function() Snacks.picker.lsp_symbols() end,
    desc = "Document Symbols",
  },
  {
    "<leader>sS",
    function() Snacks.picker.lsp_workspace_symbols() end,
    desc = "Workspace Symbols",
  },
  {
    "<leader>sj",
    function() Snacks.picker.jumps() end,
    desc = "Jumplist",
  },
  {
    "<leader>sm",
    function() Snacks.picker.marks() end,
    desc = "Marks",
  },
  {
    "<leader>sr",
    function() Snacks.picker.resume() end,
    desc = "Resume Last Picker",
  },

  -- ---------------- 🚨  Diagnostics ----------------
  {
    "<leader>xx",
    function() Snacks.picker.diagnostics() end,
    desc = "Diagnostics (Workspace)",
  },
  {
    "<leader>xX",
    function() Snacks.picker.diagnostics_buffer() end,
    desc = "Diagnostics (Buffer)",
  },

  -- ---------------- 🌿  Git ----------------
  {
    "<leader>gg",
    function() Snacks.lazygit() end,
    desc = "LazyGit",
  },
  {
    "<leader>gb",
    function() Snacks.gitbrowse() end,
    mode = { "n", "v" },
    desc = "Git Browse",
  },
  {
    "<leader>gs",
    function() Snacks.picker.git_status() end,
    desc = "Git Status",
  },
  {
    "<leader>gl",
    function() Snacks.picker.git_log() end,
    desc = "Git Log",
  },
  {
    "<leader>gB",
    function() Snacks.picker.git_branches() end,
    desc = "Branches",
  },
  {
    "<leader>gt",
    function() Snacks.picker.git_stash() end,
    desc = "Stash",
  },

  -- ---------------- 🖥️  Terminal ----------------
  {
    "<leader>`",
    function() Snacks.terminal() end,
    desc = "Floating Terminal",
  },

  -- ---------------- 🎨  UI ----------------
  {
    "<leader>un",
    function() Snacks.notifier.show_history() end,
    desc = "Notification History",
  },
  {
    "<leader>ud",
    function() Snacks.notifier.hide() end,
    desc = "Dismiss Notifications",
  },

  -- ---------------- 🧘  Zen ----------------
  {
    "<leader>zz",
    function() Snacks.zen() end,
    desc = "Zen Mode",
  },

  -- ---------------- 📝  Scratch / Notes ----------------
  {
    "<leader>nn",
    function() Snacks.scratch() end,
    desc = "Scratch Buffer",
  },
  {
    "<leader>ns",
    function() Snacks.scratch.select() end,
    desc = "Scratch List",
  },

  -- ---------------- 📂  Explorer ----------------
  {
    "<leader>e",
    function() Snacks.explorer() end,
    desc = "Explorer",
  },

  -- ---------------- 󰑕  Rename ----------------
  -- Not part of your listed groups (f/s/g/x/u/t/z/n) -- this is a
  -- code action, so it sits under the conventional LazyVim-style
  -- <leader>c "code" prefix instead. Flag if you'd rather fold it
  -- into one of your existing groups.
  {
    "<leader>cr",
    function() Snacks.rename.rename_file() end,
    desc = "Rename File",
  },

  -- ---------------- 󰒕  LSP (non-leader, unaffected by groups) ----------------
  {
    "gd",
    function() Snacks.picker.lsp_definitions() end,
    desc = "Goto Definition",
  },
  {
    "gr",
    function() Snacks.picker.lsp_references() end,
    desc = "References",
  },
  {
    "gI",
    function() Snacks.picker.lsp_implementations() end,
    desc = "Goto Implementation",
  },
}
