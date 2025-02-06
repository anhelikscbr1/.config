--That comes from: https://github.com/echasnovski/mini.nvim
--I added the default confi to remember the key combinations
return {
	--{ "echasnovski/mini.comment", version = false }, --for some reason I got a plugin that does the same but I do not know where it comes from :DDD
	--{ "echasnovski/mini.surround", version = false },
	{
		"echasnovski/mini.splitjoin",
		version = false,
		config = function()
			require("mini.splitjoin").setup({
				-- Module mappings. Use `''` (empty string) to disable one.
				-- Created for both Normal and Visual modes.
				mappings = {
					toggle = "gS",
					split = "",
					join = "",
				},

				-- Detection options: where split/join should be done
				detect = {
					-- Array of Lua patterns to detect region with arguments.
					-- Default: { '%b()', '%b[]', '%b{}' }
					brackets = nil,

					-- String Lua pattern defining argument separator
					separator = ",",

					-- Array of Lua patterns for sub-regions to exclude separators from.
					-- Enables correct detection in presence of nested brackets and quotes.
					-- Default: { '%b()', '%b[]', '%b{}', '%b""', "%b''" }
					exclude_regions = nil,
				},

				-- Split options
				split = {
					hooks_pre = {},
					hooks_post = {},
				},

				-- Join options
				join = {
					hooks_pre = {},
					hooks_post = {},
				},
			})
		end,
	},
}
