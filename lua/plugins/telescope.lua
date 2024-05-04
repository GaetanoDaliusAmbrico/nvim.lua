-- TELESCOPE

return{
  {
    -- Lazy loading
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },

    -- Config files
      config = function()
        -- Telescope config
        local builtin = require('telescope.builtin')
        -- Telescope keymaps
        vim.keymap.set('n', '<C-p>', builtin.find_files, {}) --Ctrl+P(ath) opens fuzzy finder
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- Live grep
      end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim', --opens code action with telescope
    config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
