return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		require("harpoon"):setup()
		harpoon:setup()
		local function map(left, right, options)
			vim.keymap.set("n", left, right, options or {})
		end
		map("<leader>a", function()
			harpoon:list():append()
		end)
		map("<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		map("<C-;>", function()
			harpoon:list():select(1)
		end)
		map("<C-i>", function()
			harpoon:list():select(2)
		end)
		map("<C-,>", function()
			harpoon:list():select(3)
		end)
	end,
}
