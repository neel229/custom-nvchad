local M = {}

M.general = {
    n = {
        ["<leader>af"] = {"<C-^><CR>"},
    },

    i = {
        ["jk"] = {"<ESC>"}
    }
}

M.lspconfig = {
    n = {
        ["gl"] = {
            function ()
                vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })
            end,
            "   lsp line diagnostics",
        }
    }
}

M.fugitive = {
  n = {
    ["<leader>gs"] = {":Git<CR>"},
    ["<leader>gh"] = {":Git push<CR>"},
    ["<leader>gc"] = {":Git commit<CR>"},
    ["<leader>gm"] = {":Git merge<CR>"},
  }
}

return M
