return {
  -- ---------------- 󰊄  Notifications ----------------

  -- 󰍡  Replace vim.notify with a modern notification UI.
  notifier = {
    enabled = true,

    -- 󰥔  Automatically dismiss notifications after 3 seconds.
    timeout = 3000,
  },

  -- ----------------   Input ----------------

  -- 󰏪  Replace vim.ui.input with a modern floating input.
  input = {
    enabled = true,
  },

  -- ----------------   Indentation ----------------

  -- 󰘍  Draw indentation guides and scope indicators.
  indent = {
    enabled = true,

    -- 󰄴  Disable animations for a more responsive editor.
    animate = {
       -- enabled = true,
    },

    -- 󰅩  Highlight the current indentation scope.
    scope = {
      enabled = true,
    },
  },

  -- ---------------- 󰆋  Scope ----------------

  -- 󰅩  Improve scope awareness while editing.
  scope = {
    enabled = true,
  },

  -- ----------------   Word References ----------------

  -- 󰓎  Highlight references to the word under the cursor.
  words = {
    enabled = true,
  },

  -- ---------------- 󰑕  Rename ----------------

  -- 󰬲  Provide a better file rename experience.
  rename = {
    enabled = true,
  },

  -- ----------------   Scratch ----------------

  -- 󰈔  Create temporary scratch buffers for notes and experiments.
  scratch = {
    enabled = true,
  },
}
