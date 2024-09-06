local Plugin = {'nvim-lualine/lualine.nvim', enabled = false}

Plugin.event = 'VeryLazy'

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = 'auto',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = {
      statusline = {'NvimTree'}
    }
  },
	sections = {
		lualine_a = {"mode"},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
    lualine_y = {},
    lualine_z = {'branch', 'diff', 'diagnostics'},
	},
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin

