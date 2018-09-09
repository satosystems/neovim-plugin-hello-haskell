{-# LANGUAGE TemplateHaskell #-}

module Hello (plugin) where

import Neovim
import Hello.Plugin (hello)

plugin :: Neovim (StartupConfig NeovimConfig) NeovimPlugin
plugin = wrapPlugin Plugin
  { environment = ()
  , exports     = [ $(function' 'hello) Sync ]
  }

