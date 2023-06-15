return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "folke/neodev.nvim",
    -- Adapters
    "olimorris/neotest-phpunit",
  },
  config = function()
    require("neotest").setup({
      highlights = {
        adapter_name = "NeotestAdapterName",
        border = "NeotestBorder",
        dir = "NeotestDir",
        expand_marker = "NeotestExpandMarker",
        failed = "NeotestFailed",
        file = "NeotestFile",
        focused = "NeotestFocused",
        indent = "NeotestIndent",
        marked = "NeotestMarked",
        namespace = "NeotestNamespace",
        passed = "NeotestPassed",
        running = "NeotestRunning",
        select_win = "NeotestWinSelect",
        skipped = "NeotestSkipped",
        target = "NeotestTarget",
        test = "NeotestTest",
        unknown = "NeotestUnknown",
      },
      icons = {
        child_indent = "│",
        child_prefix = "├",
        collapsed = "─",
        expanded = "╮",
        failed = "",
        final_child_indent = " ",
        final_child_prefix = "╰",
        non_collapsible = "─",
        passed = "",
        running = "",
        running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
        skipped = "",
        unknown = "",
      },
      adapters = {
        require("neotest-phpunit")({
          phpunit_cmd = function()
            return "vendor/bin/phpunit"
          end,
        }),
      },
      default_strategy = "integrated",
      benchmark = {
        enabled = true,
      },
      diagnostic = {
        enabled = true,
        severity = 1,
      },
      consumers = {},
      strategies = {
        integrated = {
          width = 120,
          height = 40,
        },
      },
    })
  end,
}
