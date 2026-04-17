return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#dfe4c4",
        dark_bg = "#dfe4c4",
        darker_bg = "#d8d9b8",   -- slightly darker for statusline, etc.
        lighter_bg = "#ecebbd",

        fg = "#1c2d28",
        dark_fg = "#253631",
        light_fg = "#858f8b",
        bright_fg = "#acb3b1",
        muted = "#606c68",

        -- === Stronger syntax colors for light bg ===
        red = "#9d2e3a",          -- deeper red (errors, vars)
        orange = "#c45d2e",       -- better orange (numbers, constants)
        yellow = "#b56b2e",       -- warm class/type yellow
        green = "#4a6b4a",        -- deeper forest green (strings)
        cyan = "#2a7a8a",         -- stronger cyan
        blue = "#3a6a9a",         -- richer function/keyword blue
        purple = "#5a4a7a",       -- deeper purple
        brown = "#8a5a6a",        -- warm deprecated

        bright_red = "#c23d4a",
        bright_yellow = "#d47a3a",
        bright_green = "#5a8a5a",
        bright_cyan = "#3a9aa8",
        bright_blue = "#4a7ab8",
        bright_purple = "#6a5a9a",

        accent = "#3a6a9a",
        cursor = "#1c2d28",
        foreground = "#1c2d28",
        background = "#dfe4c4",
        selection = "#c8d4a8",           -- soft selection bg
        selection_foreground = "#1c2d28",
        selection_background = "#5e81ac",
      },
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "aether" },
  },
}