local Plugin = {'akinsho/bufferline.nvim'}

Plugin.event = 'VeryLazy'

Plugin.opts = {
  options = {
    mode = 'buffers',
    offsets = {
      {
				filetype = 'neo-tree',
		  --  text = "File Explorer",
    	--	highlight = "Directory",
    	--	text_align = "left"
			},
    },
	},

 -- -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  },
}

Plugin.keys = {
	-- タブの選択
	{"<leader>bb", "<cmd>BufferLinePick<cr>"},
	-- タブの選択削除
	{"<leader>bc", "<cmd>BufferLinePickClose<cr>"},
}

return Plugin
