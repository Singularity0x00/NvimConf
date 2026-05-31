vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tmt", vim.cmd.Mtm)
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

--TELESCOPE

--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>ff", builtin.find_files, {}),
--vim.keymap.set("n", "<C-f>", builtin.git_files, {}),
--vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}),
--vim.keymap.set("n", "<leader>pf", function(),
--	builtin.grep_string({ search = vim.fn.input("Grep: ") })
--end, {}),
