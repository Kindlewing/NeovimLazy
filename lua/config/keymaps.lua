local maps = { i = {}, n = {}, v = {}, t = {}, [""] = {} }
local builtin = require("telescope.builtin")
local telescopeExt = require("telescope").extensions
local neovim = require("config.utilities")
local tests = require("neotest")

-- Telescope
maps.n["<leader>ff"] = { builtin.find_files, desc = "Find files" }
maps.n["<leader>fb"] = { "<CMD>Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "File browser" }
maps.n["-"] = { require("oil").open, desc = "File browser" }
maps.n["<leader>e"] = { require("oil").open, desc = "File browser" }

-- Tests
maps.n["<leader>Uf"] = {
  function()
    tests.run.run(vim.fn.expand("%"))
  end,
  desc = "Run all tests in current file",
}
maps.n["<leader>Us"] = {
  function()
    tests.summary.toggle()
  end,
  desc = "Show tests summary",
}

maps.n["<leader>Uo"] = {
  function()
    tests.output_panel.toggle()
  end,
  desc = "Show test output",
}

-- Debugging
maps.n["<F5>"] = {
  function()
    require("dap").continue()
  end,
  desc = "Debugger: Start",
}
maps.n["<F17>"] = {
  function()
    require("dap").terminate()
  end,
  desc = "Debugger: Stop",
} -- Shift+F5
maps.n["<F29>"] = {
  function()
    require("dap").restart_frame()
  end,
  desc = "Debugger: Restart",
} -- Control+F5
maps.n["<F6>"] = {
  function()
    require("dap").pause()
  end,
  desc = "Debugger: Pause",
}
maps.n["<F9>"] = {
  function()
    require("dap").toggle_breakpoint()
  end,
  desc = "Debugger: Toggle Breakpoint",
}
maps.n["<F10>"] = {
  function()
    require("dap").step_over()
  end,
  desc = "Debugger: Step Over",
}
maps.n["<F11>"] = {
  function()
    require("dap").step_into()
  end,
  desc = "Debugger: Step Into",
}
maps.n["<F23>"] = {
  function()
    require("dap").step_out()
  end,
  desc = "Debugger: Step Out",
} -- Shift+F11
maps.n["<leader>db"] = {
  function()
    require("dap").toggle_breakpoint()
  end,
  desc = "Toggle Breakpoint (F9)",
}
maps.n["<leader>dB"] = {
  function()
    require("dap").clear_breakpoints()
  end,
  desc = "Clear Breakpoints",
}
maps.n["<leader>dc"] = {
  function()
    require("dap").continue()
  end,
  desc = "Start/Continue (F5)",
}
maps.n["<leader>di"] = {
  function()
    require("dap").step_into()
  end,
  desc = "Step Into (F11)",
}
maps.n["<leader>do"] = {
  function()
    require("dap").step_over()
  end,
  desc = "Step Over (F10)",
}
maps.n["<leader>dO"] = {
  function()
    require("dap").step_out()
  end,
  desc = "Step Out (S-F11)",
}
maps.n["<leader>dq"] = {
  function()
    require("dap").close()
  end,
  desc = "Close Session",
}
maps.n["<leader>dQ"] = {
  function()
    require("dap").terminate()
  end,
  desc = "Terminate Session (S-F5)",
}
maps.n["<leader>dp"] = {
  function()
    require("dap").pause()
  end,
  desc = "Pause (F6)",
}
maps.n["<leader>dr"] = {
  function()
    require("dap").restart_frame()
  end,
  desc = "Restart (C-F5)",
}
maps.n["<leader>dR"] = {
  function()
    require("dap").repl.toggle()
  end,
  desc = "Toggle REPL",
}
-- nvim dapui
maps.n["<leader>du"] = {
  function()
    require("dapui").toggle()
  end,
  desc = "Toggle Debugger UI",
}
maps.n["<leader>dh"] = {
  function()
    require("dap.ui.widgets").hover()
  end,
  desc = "Debugger Hover",
}

neovim.set_keymaps(maps)
