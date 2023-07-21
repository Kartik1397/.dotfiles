local actions = require 'telescope.actions'
local action_layout = require 'telescope.actions.layout'

require 'telescope'.setup {
    defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = " ",

        winblend = 0,

        layout_strategy = "horizontal",
        layout_config = {
            width = 0.95,
            height = 0.85,

            horizontal = {
                preview_width = function(_, cols, _)
                    if cols > 200 then
                        return math.floor(cols * 0.4)
                    else
                        return math.floor(cols * 0.6)
                    end
                end,
            },

            vertical = {
                width = 0.9,
                height = 0.95,
                preview_height = 0.5,
            },

            flex = {
                horizontal = {
                    preview_width = 0.9,
                },
            },
        },

        selection_strategy = "reset",
        sorting_strategy = "descending",
        scroll_strategy = "cycle",

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-s>"] = actions.select_horizontal,
                ["<C-n>"] = "move_selection_next",

                ["<C-e>"] = actions.results_scrolling_down,
                ["<C-y>"] = actions.results_scrolling_up,

                ["<M-p>"] = action_layout.toggle_preview,
                ["<M-m>"] = action_layout.toggle_mirror,

            }
        },

        file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
    },

    extensions = {
    },
}

require 'telescope'.load_extension "ui-select"

vim.api.nvim_set_keymap(
    "n",
    "<leader>ft",
    "<cmd>lua require('telescope.builtin').git_files({cwd = '~/.dotfiles', shorten_path = true })<cr>",
    { noremap = true, silent = true }
);
vim.api.nvim_set_keymap("n", "<leader>fd", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true });
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fe", "<cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bo", "<cmd>lua require('telescope.builtin').vim_options()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wt", "<cmd>lua require('telescope.builtin').treesitter()<cr>", { noremap = true, silent = true })
