return {
	{
		"AlphaTechnolog/pywal.nvim",
		name = "pywal", -- equivalent to `as = 'pywal'` in packer
		lazy = false, -- set to true if you want lazy loading
		config = function()
			require("pywal").setup()
		end,
	},
}
