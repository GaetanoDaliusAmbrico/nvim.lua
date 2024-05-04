-- Mason (Package manager for LSP, DAP linters and formatters)
return{
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'bashls', 'clangd', 'jdtls'}
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup{}
      lspconfig.clangd.setup{}
      lspconfig.bashls.setup{}
      lspconfig.java_language_server.setup{}

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) --display documentation on the word hovering
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) --goes to directly code definition
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {}) --Code action
    end
  },
  {
    'mfussenegger/nvim-jdtls',
  }
}
