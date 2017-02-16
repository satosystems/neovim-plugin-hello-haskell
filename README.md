# neovim-plugin-hello-haskell

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

Have fun!