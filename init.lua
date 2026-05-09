require("config.lazy")
require("config.options")
require("config.remap")
require("config.diagnostics")

vim.opt.colorcolumn = "80"

-- Fix floating window background + border halo
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatShadow", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = "NONE" })
