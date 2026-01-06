return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  lazy = false,
  configs = function()
    -- Treesitter sytax highlighting tool
    local config = require("nvim-treesitter.config")
    config.setup({
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "helm",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "python",
        "regex",
        "terraform",
        "tmux",
        "vim",
        "vimdoc",
        "yaml",
      },
      sync_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
