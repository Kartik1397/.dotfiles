vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd [[
    colorscheme gruvbox
]]

vim.cmd('hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('hi SignColumn guibg=NONE ctermbg=NONE')
vim.cmd('hi CursorLineNr ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE')
vim.cmd('hi GruvboxGreenSign ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE')
vim.cmd('hi GruvboxAquaSign ctermfg=108 ctermbg=NONE guifg=#8ec07c guibg=NONE')
vim.cmd('hi GruvboxRedSign ctermfg=167 ctermbg=NONE guifg=#fb4934 guibg=NONE')
