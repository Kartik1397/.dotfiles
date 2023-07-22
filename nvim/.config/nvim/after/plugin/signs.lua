local signs = require'gitsigns'

vim.cmd('hi GitSignsAdd guibg=NONE ctermbg=NONE')

signs.setup {
    signs = {
        add = { hl = "GitSignsAdd", text = "▎" },
        change = { hl = "GitSignsChange", text = "▎" },
        delete = { hl = "GitSignsDelete", text = "_" },
        topdelete = { hl = "GitSignsDelete", text = "‾" },
        changedelete = { hl = "GitSignsDelete", text = "~" },
    },
    numhl = false,
    linehl = false,
    word_diff = false,
    current_line_blame_opts = {
        delay = 2000,
        virt_text_pos = "eol",
    }
}
