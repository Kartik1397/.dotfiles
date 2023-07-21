require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c",
        "cpp",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "python",
        "rust",
        "typescript",
    },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = false },

        smart_rename = {
            enable = false,
            keymaps = {
                smart_rename = "grr",
            },
        },

        navigation = {
            enable = false,
            keymaps = {
                goto_definition = "gnd",
                list_definition = "gdD",
            },
        },

    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<Tab>",
            scope_incremental = "<S-Tab>",
        },
    },

    playground = {
        enable = true,
        updatetime = 25,
        persist_queries = true,
        keybindings = {
            toggle_query_editor = "0",
            toggle_hl_groups = "i",
            toggle_injected_languages = "t",
            toggle_anonymous_nodes = "a",
            toggle_language_display = "I",
            focus_language = "f",
            unfocus_langauge = "F",
            update = "R",
            goto_node = "<cr>",
            show_help = "?",
        },
    },
}

vim.cmd [[nnoremap <space>tp :TSPlayground<CR>]]
vim.cmd [[nnoremap <space>th :TSHighlightCapturesUnderCursor<CR>]]
