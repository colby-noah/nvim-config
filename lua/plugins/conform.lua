return {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = {
        formatters_by_ft = {
            javascript = { 'prettier' },
            typescript = { 'prettier' },
            javascriptreact = { 'prettier' },
            typescriptreact = { 'prettier' },
            json = { 'prettier' },
            css = { 'prettier' },
            markdown = { 'prettier' },
            yaml = { 'prettier' },
        },
        format_on_save = { timeout_ms = 1000, lsp_format = 'fallback' },
    },
}
