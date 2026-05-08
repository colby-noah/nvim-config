return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>pf", function() require("telescope.builtin").find_files() end, desc = "Find Files (cwd)" },
        { "<leader>pg", function() require("telescope.builtin").git_files() end, desc = "Find Files (git)" },
        { "<leader>ps", function() require("telescope.builtin").grep_string(
            { search = vim.fn.input("Grep > ") }
        ) end, desc = "Grep Search" },
    }
}
