-- ---------------- 󰒲  Mason ----------------

return {
  "mason-org/mason.nvim",
  lazy = false,
  build = ":MasonUpdate",

  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
