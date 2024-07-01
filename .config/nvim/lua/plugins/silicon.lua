return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			font = "0xProto Nerd Font=9.0; 0xProto Nerd Font=9.0",
			background = "#656D75",
			theme = "1337",
			no_window_controls = true,
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
			to_clipboard = true,
		})
	end,
}
