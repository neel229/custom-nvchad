local M = {}

M.general = {
    n = {
        ["<leader>af"] = {"<C-^><CR>"},
    },

    i = {
        ["jk"] = {"<ESC>"}
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
