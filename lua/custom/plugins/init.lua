return {
  ['folke/which-key.nvim'] = {
    disable = false,
    override_options = {
      setup = function ()
        require("core.lazy_load").on_file_open "which-key.nvim"
      end
    },
  },
  ['neovim/nvim-lspconfig'] = {
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.plugins.lspconfig")
    end,
  },
}
