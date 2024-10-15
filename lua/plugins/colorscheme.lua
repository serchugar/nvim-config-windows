return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,


	config = function()
		require("onedark").setup {
			style = "darker",
			transparent = true,
			lualine = {
				transparent = true,
			},
			colors = {
				electricBlue = "#00e8d5",
				dimElectricBlue = "#009f92",
			},
			highlights = {
				["LineNr"] = { fg = "$electricBlue" },
				["LineNrAbove"] = { fg = "$dimElectricBlue" },
				["LineNrBelow"] = { fg = "$dimElectricBlue" },
			},
		}
		vim.cmd([[colorscheme onedark]])
	end,
	
}
