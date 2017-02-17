#!/bin/bash

plugin_name=neovim-plugin-hello-haskell
plugin_dir="$(cd $(dirname $0) && pwd)"

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

