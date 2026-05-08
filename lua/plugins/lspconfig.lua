return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config.html = {}
            vim.lsp.config.cssls = {}
            vim.lsp.config.css_variables = {}
            vim.lsp.config.clangd = {}

            vim.lsp.config.lua_ls = {
                settings = {
                    Lua = { diagnostics = { globals = { "vim" } } },
                },
            }

            vim.lsp.config.pyright = {}

            vim.lsp.config.vtsls = {
                filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
                settings = {
                    vtsls = {
                        tsserver = {
                            globalPlugins = {
                                {
                                    name = "@vue/typescript-plugin",
                                    location = vim.fn.stdpath("data")
                                    .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
                                    languages = { "vue" },
                                    configNamespace = "typescript",
                                }
                            },
                        },
                    },
                },
            }

            vim.lsp.config.vue_ls = {
                filetypes = { "vue" },
                init_options = {
                    typescript = {
                        serverPath = vim.fn.exepath("vtsls"),
                    },
                },
            }
        end,
    },
}
