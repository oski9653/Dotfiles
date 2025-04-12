return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	lazy = false,
	config = function()
		require("kanagawa").setup({
			transparent = true,
			overrides = function(colors)
				return {
					LineNr = { bg = "none" },
					SignColumn = { bg = "none" },
					LineNrAbove = { bg = "none" },
					LineNrBelow = { bg = "none" },
				}
			end,
		})
	end,
}
