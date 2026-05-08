return {
    {
        "saghen/blink.cmp",
        event = "InsertEnter",
        dependencies = { "L3MON4D3/LuaSnip" },
        version = "*",
        opts = {
            keymap = {
                preset = "default",
                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
            },
            sources = {
                default = { "lsp", "buffer", "path", "snippets" },
            },
            snippets = {
                preset = "luasnip",
            },
        },
    },
}
