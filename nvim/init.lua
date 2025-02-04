require("core.keymaps")
require("core.options")

vim.wo.number = true
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Fix copy and paste in WSL (Windows Subsystem for Linux)
if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "win32yank", -- Use win32yank for clipboard operations
		copy = {
			["+"] = "win32yank.exe -i --crlf", -- Command to copy to the system clipboard
			["*"] = "win32yank.exe -i --crlf", -- Command to copy to the primary clipboard
		},
		paste = {
			["+"] = "win32yank.exe -o --lf", -- Command to paste from the system clipboard
			["*"] = "win32yank.exe -o --lf", -- Command to paste from the primary clipboard
		},
		cache_enabled = false, -- Disable clipboard caching
	}
end

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		require("plugins.themeV3"),
		require("plugins.neotree"),
		require("plugins.bufferline"),
		require("plugins.treesitter"),
		require("plugins.telescope"),
		require("plugins.autocompletion"), --needed in order to lsp properly working
		require("plugins.lsp"),
		require("plugins.misc"),
		require("plugins.gitsigns"),
		require("plugins.startscreenalpha"),
		require("plugins.none-ls"), --to autoformat files
		--require 'plugins.indentline',
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	--install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
