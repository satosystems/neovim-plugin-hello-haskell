module Hello.Plugin (hello) where

import Neovim

hello :: String -> Neovim' String
hello name = return $ "Hello, " ++ name

