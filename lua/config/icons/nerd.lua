local icons = require("config.icons.nerd")

vim.fn.sign_define("DapBreakpoint", { text = icons.DapBreakpoint, texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = icons.DapStopped, texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define(
  "DapBreakpointRejected",
  { text = icons.DapBreakpointRejected, texthl = "", linehl = "", numhl = "" }
)

return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "catppuccin",
    icons = {
      diagnostics = {
        Error = icons.DiagnosticError,
        Warn = icons.DiagnosticWarn,
        Hint = icons.DiagnosticHint,
        Info = icons.DiagnosticInfo,
      },
      git = {
        added = icons.GitAdd,
        modified = icons.GitRenamed,
        removed = icons.GitDelete,
      },
      kinds = {
        Array = " ",
        Boolean = " ",
        Class = " ",
        Color = " ",
        Constant = " ",
        Constructor = " ",
        Copilot = " ",
        Enum = " ",
        EnumMember = " ",
        Event = " ",
        Field = " ",
        File = " ",
        Folder = " ",
        Function = " ",
        Interface = " ",
        Key = " ",
        Keyword = " ",
        Method = " ",
        Module = " ",
        Namespace = " ",
        Null = "ﳠ ",
        Number = " ",
        Object = " ",
        Operator = " ",
        Package = " ",
        Property = " ",
        Reference = " ",
        Snippet = " ",
        String = " ",
        Struct = " ",
        Text = " ",
        TypeParameter = " ",
        Unit = " ",
        Value = " ",
        Variable = " ",
      },
    },
  },
}
