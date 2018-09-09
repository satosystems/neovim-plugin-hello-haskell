module Hello.Plugin (hello) where

import Neovim

hello :: String -> Neovim env String
hello name = return $ "Hello, " ++ name

