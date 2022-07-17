# dnd.nvim

Indicate busy status to block display of notifications and mute sounds.

This plugin was written for study purposes.

## Requirements:
- only works with gnome
- [gsettings](https://manpages.ubuntu.com/manpages/trusty/man1/gsettings.1.htm) tool

## Install

### With Packer

```lua
use { 'nicolascb/dnd.nvim' }
```


### With vim-plug

```
Plug 'nicolascb/dnd.nvim'
```

## Commands

| Command               | Description                      |
| --------------------  | ---------------------------------|
| `DNDStatus`           | print current status             |
| `DNDToggle`           | enable/disable                   |
