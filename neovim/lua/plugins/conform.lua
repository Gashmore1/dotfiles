return {
  "stevearc/conform.nvim",
  optional = false,
  opts = {
    formatters_by_ft = {
      hcl = { "packer_fmt" },
      terraform = { "terraform_fmt" },
      tf = { "terraform_fmt" },
      nix = { "nixfmt" },
      ["terraform-vars"] = { "terraform_fmt" },
    },
  },
  config = function()
    require("conform").setup({
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
