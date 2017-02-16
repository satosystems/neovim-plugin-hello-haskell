import Neovim

import qualified Hello as Hello

main :: IO ()
main = neovim defaultConfig
  { plugins = plugins defaultConfig ++ [ Hello.plugin ]
  }

