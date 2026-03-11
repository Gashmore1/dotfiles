return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  lazy = false,
  config = function()
    -- Treesitter sytax highlighting tool
    local ts = require("nvim-treesitter")
    ts.setup({ "~/.local/share/nvim/tree-sitter" })
    ts.install(
      {
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
        "nix",
        "python",
        "regex",
        "terraform",
        "tmux",
        "vim",
        "vimdoc",
        "yaml",
      }
    )
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'go', 'markdown' },
      callback = function() vim.treesitter.start() end,
    })
  end
}
