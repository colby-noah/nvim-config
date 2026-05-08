vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit Neovim" })
vim.keymap.set("n", "<leader>o", ":so<CR>", { desc = "Source File" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "View Error" })

vim.keymap.set({ "n", "v", "x" }, "<C-y>", "\"+y", { desc = "System Clipboard Copy" })
vim.keymap.set({ "n", "v", "x" }, "<C-p>", "\"+p", { desc = "System Clipboard Paste" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Project View" })
