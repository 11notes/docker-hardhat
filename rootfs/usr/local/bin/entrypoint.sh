#!/bin/ash
  if [ -z "$1" ]; then
      set -- "npx" \
        hardhat \
        --config /hardhat/etc/default.js \
        node
  fi

  exec "$@"