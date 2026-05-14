return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    branch = "main",
    ---@class TSConfig
    opts = {
        -- custom handling of parsers
        ensure_installed = {
            "go",
      },
    },

    config = function()
    require'nvim-treesitter'.setup()
    require'nvim-treesitter'.install { 'python', 'go', 'javascript', 'c', 'json', 'lua' }
    end,
}
