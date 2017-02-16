{-# LANGUAGE TemplateHaskell #-}

module Hello (plugin) where

import Neovim
import Hello.Plugin (hello)

plugin :: Neovim (StartupConfig NeovimConfig) () NeovimPlugin
plugin = wrapPlugin Plugin
  { exports         = [ $(function' 'hello) Sync ]
  , statefulExports = []
  }

