require'nvim-treesitter.configs'.setup {
    ensure_installed = {"cpp",
    "tsx",
    "yaml",
    "lua",
    "python",
    "rust",
    "toml",
    "javascript",
    "java",
    "bash",
    "make",
    "regex",
    "json",
    "html",
    "css"},
    sync_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = { enable = true},

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
