if !has('nvim')
  finish
endif

if exists("g:loaded_neovim_plugin_hello_haskell")
  finish
endif
let g:loaded_neovim_plugin_hello_haskell = 1

let s:save_cpo = &cpo
set cpo&vim

let s:script_dir = expand('<sfile>:p:h')
call rpcrequest(rpcstart(s:script_dir . '.sh'), "PingNvimhs")

let &cpo = s:save_cpo
unlet s:save_cpo

