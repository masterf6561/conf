function ColorMyPencils(color)
	vim.cmd("colorscheme rose-pine")
end

ColorMyPencils()

require("rose-pine").setup({
	disabel_background = true
})
