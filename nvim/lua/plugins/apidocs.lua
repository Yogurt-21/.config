
return {
  'emmanueltouzery/apidocs.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- or, 'folke/snacks.nvim'
  },
  cmd = { 'ApidocsSearch', 'ApidocsInstall', 'ApidocsOpen', 'ApidocsSelect', 'ApidocsUninstall' },
  config = function()
    require('apidocs').setup(

	{picker = 'telescope',}

    )
    -- Picker will be auto-detected. To select a picker of your choice explicitly you can set picker by the configuration option 'picker':
    -- require('apidocs').setup({picker = "snacks"})
    -- Possible options are 'ui_select', 'telescope', and 'snacks'
    -- With snacks, the picker layout defaults to the "telescope" preset. Any snacks layout preset name or layout table works:
    -- require('apidocs').setup({picker = "snacks", layout = "ivy_split"})
    -- You can change the keymap for following "local://" links by setting the configuration option 'follow_link_keymap' (default is "<C-]>"):
    -- require('apidocs').setup({follow_link_keymap = "<C-]>"})
  end,
  keys = {
    { '<leader>z', '<cmd>ApidocsOpen<cr>', desc = 'Search Api Doc' },
    { '<leader>doci', '<cmd>ApidocsInstall<cr>', desc = 'Install Api Doc' },
  },
}
