#!/bin/ash
  if [ -z "$1" ]; then
      cd /hardhat
      set -- "npx" \
        hardhat \
        --config /hardhat/etc/default.js \
        node
  fi

  exec "$@"