return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' },
     config = function()
	local telescope = require("telescope");

	telescope.setup({
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown({}),
			},
		},
	})

	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>p", builtin.find_files, {})
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

	-- require("telescope").load_extension("ui-select")
	-- require("telescope").load_extension("lazygit")
     end
}
