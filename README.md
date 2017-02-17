# neovim-plugin-hello-haskell

[![Build Status](https://travis-ci.org/satosystems/neovim-plugin-hello-haskell.svg?branch=master)](https://travis-ci.org/satosystems/neovim-plugin-hello-haskell)

This is a very simple plugin of [Neovim](https://neovim.io/)
written by [Haskell](https://www.haskell.org/) using
[nvim-hs](https://github.com/neovimhaskell/nvim-hs).

# How to build

```
$ cd ~/Documents/git
$ git clone https://github.com/satosystems/neovim-plugin-hello-haskell
$ cd neovim-plugin-hello-haskell
$ stack build
```

# How to use this plugin from Neovim

Add the following snippet to your `~/.config/nvim/init.vim`.

```
if has('nvim')
  call rpcrequest(rpcstart(expand('$HOME/Documents/git/neovim-plugin-hello-haskell/plugin.sh')), "PingNvimhs")
endif
```

And type this on Neovim:

```
:echo Hello("Haskell")
```

![](https://raw.githubusercontent.com/satosystems/neovim-plugin-hello-haskell/images/images/screenshot-01.png)

![](https://raw.githubusercontent.com/satosystems/neovim-plugin-hello-haskell/images/images/screenshot-02.png)

Have fun!
