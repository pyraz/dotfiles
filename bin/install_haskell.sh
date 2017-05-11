#!/bin/bash

current_dir=$(cd $(dirname $0) && pwd)
source $current_dir/utilities.sh

set -ex

if [ ! `which stack` ]; then
  curl -sSL https://get.haskellstack.org/ | sh
fi

pushd $dotfiles_dir
  if $darwin; then
    stack setup --allow-different-user
  else
    su -c 'stack setup' -- $DOTFILES_USER
  fi

  stack install hlint stylish-haskell hindent ghc-mod hdevtools fast-tags
popd
