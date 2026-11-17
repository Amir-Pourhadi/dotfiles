-- ---------------- 󰊢  Git ----------------
-- lazygit.nvim replacement: floating LazyGit + repo-aware
-- "open in browser" (gitbrowse), sharing the rounded aesthetic.

return {
  -- ---------------- 󰊢  LazyGit ----------------
  lazygit = {
    -- 🎨  Match the floating terminal / picker look.
    win = {
      style = "float",
      border = "rounded",
      width = 0.9,
      height = 0.9,
    },

    -- 󰄴  Skip the "press enter to continue" theme flash on open.
    configure = true,
  },

  -- ---------------- 🌐  Git Browse ----------------
  gitbrowse = {
    -- 󰆾  Open the current line/selection on the remote (GitHub, etc.)
    -- rather than just the repo root — more useful day-to-day.
    what = "line",

    -- 󰗹  Print the resolved URL to the command line as confirmation
    -- instead of silently shelling out to xdg-open.
    notify = true,
  },
}
