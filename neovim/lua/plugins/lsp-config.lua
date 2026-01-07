return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "docker_compose_language_service",
          "dockerls",
          "eslint",
          "gopls",
          "helm_ls",
          "jsonls",
          "pylsp",
          "terraformls",
          "yamlls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    event = { "BufReadPre", "BufNewFile", "BufEnter" },
    config = function()
      vim.lsp.config('ansiblels', {})
      vim.lsp.config('bashls', {})
      vim.lsp.config('docker_compose_language_service', {})
      vim.lsp.config('dockerls', {})
      vim.lsp.config('eslint', {})
      vim.lsp.config('gopls', {})
      vim.lsp.config('helm_ls', {
          settings = {
            ['helm-ls'] = {
              yamlls = {
                path = "yaml-language-server",
              }
            }
          }
        }
      )
      vim.lsp.config('jsonls', {})
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      })
      vim.lsp.config('nil_ls', {})
      vim.lsp.config('pylsp', {})
      vim.lsp.config('sqlls', {})
      vim.lsp.config('terraformls', {})
      vim.lsp.config('yamlls', {})
      vim.lsp.config('vuels', {})

      -- vim.lsp.enable('ansiblels')
      vim.lsp.enable('bashls')
      vim.lsp.enable('docker_compose_language_service')
      vim.lsp.enable('dockerls')
      vim.lsp.enable('eslint')
      vim.lsp.enable('gopls')
      vim.lsp.enable('helm_ls')
      vim.lsp.enable('jsonls')
      vim.lsp.enable('lua_ls')
      -- vim.lsp.enable('nil_ls')
      vim.lsp.enable('pylsp')
      -- vim.lsp.enable('sqlls')
      vim.lsp.enable('terraformls')
      vim.lsp.enable('terraformls')
      vim.lsp.enable('yamlls')
    end,
  },
}
