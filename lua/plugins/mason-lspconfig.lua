return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "html",
                    "cssls",
                    "css_variables",
                    "clangd",
                    "lua_ls",
                    "pyright",
                    "vtsls",
                    "vue_ls",
                },
            })
        end,
    },
}

