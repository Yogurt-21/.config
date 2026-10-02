
return{
    {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
	    'nvim-lua/plenary.nvim',
	    -- optional but recommended
	    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},

	config = function()

	    local actions = require("telescope.actions")

	    require('telescope').setup{
	      defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		-- ..
		

		mappings = {

		    n = {

			["q"] = actions.close


		    },


		},

	      },
		pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	      },
		extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
		}
	    }
	end,
	
    }

}
