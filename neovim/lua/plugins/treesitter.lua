return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- Treesitter sytax highlighting tool
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"go",
				"helm",
				"html",
				"java",
				"json",
				"lua",
				"python",
				"regex",
				"terraform",
				"tmux",
				"vim",
				"vimdoc",
				"yaml",
			},
			sync_install = true,
			highlight = { enable = true },
			indent = { enable = true }
		})
	end
}
