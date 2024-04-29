return {
  {
      'ntpeters/vim-better-whitespace',
      init = function()
          vim.g.strip_whitespace_on_save = 1
          vim.g.strip_whitespace_confirm = 0
      end
  },
  {
      'mbbill/undotree',
      keys = {
          {"<leader>u", function() vim.cmd.UndotreeToggle() end, desc = "Open Undotree"},
      },
  },
  {
      'alexghergh/nvim-tmux-navigation',
      config = function()
          require'nvim-tmux-navigation'.setup {
              disable_when_zoomed = true, -- defaults to falsekeybindings
              keybindings = {
                  left = "<C-h>",
                  down = "<C-j>",
                  up = "<C-k>",
                  right = "<C-l>",
                  last_active = "<C-\\>",
              }
          }
      end
  },
  {
      "rose-pine/neovim",
      init = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      end,
      config = function()
          vim.cmd.colorscheme("rose-pine")
      end
  },
}

