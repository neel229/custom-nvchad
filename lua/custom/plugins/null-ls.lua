local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
   -- Lua
   b.formatting.stylua,

   -- Go
   b.diagnostics.golangci_lint,

   -- TypeScript, JavaScript
   b.formatting.prettierd,
   b.diagnostics.eslint_d,
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
