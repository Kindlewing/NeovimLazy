return {
	'williamboman/mason.nvim',
	cmd = 'Mason',
	keys = { { '<leader>cm', '<cmd>Mason<cr>', desc = 'Mason' } },
	opts = {
		ensure_installed = {
			'stylua',
			'shellcheck',
			'editorconfig-checker',
			'beautysh',
			'marksman',
			'shfmt',
			'flake8',
			'prettier',
			'prettierd',
			'rust-analyzer',
			'pyright',
			'rustfmt',
			'typescript-language-server',
			'php-cs-fixer',
			'tailwindcss-language-server',
			'css-lsp',
		},
	},
	---@param opts MasonSettings | {ensure_installed: string[]}
	config = function(plugin, opts)
		require('mason').setup(opts)
		local mr = require('mason-registry')
		for _, tool in ipairs(opts.ensure_installed) do
			local p = mr.get_package(tool)
			if not p:is_installed() then
				p:install()
			end
		end
	end,
}
