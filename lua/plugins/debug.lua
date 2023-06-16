return {
	'mfussenegger/nvim-dap',
	config = function()
		local dap = require('dap')
		dap.adapters.php = {
			type = 'executable',
			command = 'nodejs',
			args = { '/home/hfinn/php-debug/out/phpDebug.js' },
		}
		dap.configurations.php = {
			{
				type = 'php',
				request = 'launch',
				name = 'Listen for Xdebug',
				port = '9008',
				log = true,
				serverSourceRoot = '~/repos/ship',
			},
		}
	end,
}
