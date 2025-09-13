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
          "helm_ls",
          "jsonls",
          "pylsp",
          "terraformls",
          "yamlls",
          "eslint",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    event = { "BufReadPre", "BufNewFile", "BufEnter" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.ansiblels.setup({})
      lspconfig.bashls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.helm_ls.setup(
        {
          settings = {
            ['helm-ls'] = {
              yamlls = {
                path = "yaml-language-server",
              }
            }
          }
        }
      )
      lspconfig.jsonls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.nil_ls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.terraformls.setup({})
      lspconfig.yamlls.setup({})
    end,
  },
}
