return {
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      local utils = require("telescope.utils")


      require("telescope").setup {
        pickers = {
          find_files = {
            hidden = true
          },
          grep_string = {
            additional_args = { "--hidden" }
          },
          live_grep = {
            additional_args = { "--hidden" }
          }
        }
      }

      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fu', builtin.lsp_references, { noremap = true, silent = true })
    end
  },
  {
    "ANGkeith/telescope-terraform-doc.nvim",
    ft = { "terraform", "hcl" },
    config = function()
      require("telescope").load_extension("terraform_doc")
    end,
  },
  {
    "cappyzawa/telescope-terraform.nvim",
    ft = { "terraform", "hcl" },
    config = function()
      require("telescope").load_extension("terraform")
    end,
  }
}
