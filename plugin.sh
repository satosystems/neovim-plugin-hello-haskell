#!/bin/bash

plugin_name=neovim-plugin-hello-haskell
plugin_dir="$HOME/Documents/git/$plugin_name"

if [ ! -d $plugin_dir ]; then
  echo "You need to change 'plugin_dir' according to your environment."
  exit 1
fi

pushd $plugin_dir > /dev/null

if [ -d "$plugin_dir/.stack-work" ]; then
  stack exec $plugin_name-exe -- "$@"
  rc=0
else
  echo "No development directories found. Have you built the project?"
  rc=2
fi

popd > /dev/null

exit $rc

