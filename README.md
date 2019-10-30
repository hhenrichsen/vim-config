# Vim Config

## Setup

1. Get yourself a copy of nvim for your platform. See the instructions 
   [here](https://github.com/neovim/neovim/wiki/Installing-Neovim).
2. Install [vim-plug](https://github.com/junegunn/vim-plug). I don't
   redistribute that as a part of this repo.
3. **Optional:** If you want support for `fzf`, install
   [fzf](https://github.com/junegunn/fzf) and copy the `fzf.vim` file from fzf's
   repo into the `plugin` folder.

## Modules

If you don't like something I've added or want to add something, you can either
directly add it to the `init.vim` or `ginit.vim`, or add it in the modules
folder.

All of my plugins are set up to be loaded from modules, and can be easily
disabled by deleting the associated `runtime` line or commenting it out. 

Note that the `00-init.vim` file creates all of the module-associated variables,
so it is best to not delete that to avoid undefined variables in other parts of
the configuration.
