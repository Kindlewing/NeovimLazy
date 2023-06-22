return {
	'neovim/nvim-lspconfig',
	opts = {
		servers = {
			tailwindcss = {},
			pyright = {
				python = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = 'off',
						typeCheckingMode = 'off',
						useLibraryCodeForTypes = true,
					},
				},
			},
			intelephense = {},
			lua_ls = {
				settings = {
					Lua = {
						runtime = {
							version = 'LuaJIT',
						},
						diagnostics = {
							globals = { 'vim' },
						},
						workspace = {
							-- Make the server aware of Neovim runtime files
							library = vim.api.nvim_get_runtime_file('', true),
						},
						-- Do not send telemetry data containing a randomized but unique identifier
						telemetry = {
							enable = false,
						},
					},
				},
			},
		},
	},
}
