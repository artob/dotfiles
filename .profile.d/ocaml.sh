#!/bin/sh
if [ -f "$HOME/.opam/opam-init/init.sh" ]; then
  # OPAM configuration
  source "$HOME/.opam/opam-init/init.sh" > /dev/null 2> /dev/null || true
fi
