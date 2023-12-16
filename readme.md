# lumenvim

Lumen language support for Vim.

## Installation 

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
require("packer").startup(function(use)
    -- ...
    use "veevol/lumenvim"
end)
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require("lazy").setup({
    -- ...
    "veevol/lumenvim"
})
```

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
call plug#begin()

" ...
Plug "veevol/lumenvim"

call plug#end()
```
