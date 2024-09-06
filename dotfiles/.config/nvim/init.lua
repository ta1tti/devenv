local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

-- vim.opt.clipboard:append({"unnamedplus"})
vim.api.nvim_set_option("clipboard", "unnamed")
vim.o.statusline = ""
vim.o.laststatus = 0
vim.o.cmdheight = 0

load('user.settings')
load('user.commands')
load('user.keymaps')
require('user.plugins')

pcall(vim.cmd.colorscheme, 'tokyonight')

---
-- Resources:
-- * Learn lua in X minutes
-- https://learnxinyminutes.com/docs/lua/
--
-- * Lua crash course (12 min video)
-- https://www.youtube.com/watch?v=NneB6GX1Els
--
-- * Neovim's official lua guide
-- https://neovim.io/doc/user/lua-guide.html
--
-- * Lazy.nvim: plugin configuration
-- https://dev.to/vonheikemen/lazynvim-plugin-configuration-3opi
---

