return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		lazygit = { enabled = true }, --We need to install lazygit  e.g via homebrew! :)
		zen = { enabled = true },
	},
	keys = {
		{
			"<leader>gl",
			function()
				require("snacks").lazygit()
			end,
			desc = "Lazygit",
		},
		{
			"<leader>lg",
			function()
				require("snacks").lazygit.log()
			end,
			desc = "Lazygit Logs",
		},
		{
			"<leader>z",
			function()
				Snacks.zen()
			end,
			desc = "Toggle Zen Mode",
		},
		{
			"<leader>Z",
			function()
				Snacks.zen.zoom()
			end,
			desc = "Toggle Zoom",
		},
	},
}
