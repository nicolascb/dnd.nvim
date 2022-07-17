if exists('g:loaded_dnd_nvim') | finish | endif

if !executable('gsettings')
    echohl Error
    echomsg "dnd.nvim only works with gnome"
    finish
endif

let g:loaded_dnd_nvim = 1
