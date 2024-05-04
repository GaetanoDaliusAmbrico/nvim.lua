return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", --Autoupdate 

  config = function()
    local tsconfig = require('nvim-treesitter.configs')
    tsconfig.setup({
      ensure_installed = {'lua', 'c', 'java', 'javascript', 'typescript', 'html', 'css', 'python'},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
