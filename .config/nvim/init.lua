-- show line number
vim.opt.number = true
-- activate mouse
vim.opt.mouse = 'a'

-- leader key
vim.g.mapleader = ' '


-- lazy.vim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- install packages
require("lazy").setup({
	{ "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		  vim.cmd([[colorscheme tokyonight]])
	  end,
	},
})
