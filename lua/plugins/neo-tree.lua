  -- NEO-TREE
return{
-- Lazy loading
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    },
-- Config settings
  config = function()
    vim.keymap.set('n','<leader>n', ':Neotree filesystem reveal left<CR>', {})
  end
}
