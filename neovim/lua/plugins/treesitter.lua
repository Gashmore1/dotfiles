return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  lazy = false,
  config = function()
    -- Treesitter sytax highlighting tool
    local ts = require("nvim-treesitter")
    --ts.setup({
    --  ensure_installed = {
    --    "bash",
    --    "c",
    --    "cpp",
    --    "css",
    --    "dockerfile",
    --    "go",
    --    "helm",
    --    "html",
    --    "java",
    --    "javascript",
    --    "json",
    --    "lua",
    --    "python",
    --    "regex",
    --    "terraform",
    --    "tmux",
    --    "vim",
    --    "vimdoc",
    --    "yaml",
    --  },
    --  sync_install = true,
    --  highlight = { enable = true },
    --  indent = { enable = true },
    --})
    ts.setup({"~/.local/share/nvim/tree-sitter"})
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
      pattern = { 'go' },
      callback = function() vim.treesitter.start() end,
    })
  end
}
