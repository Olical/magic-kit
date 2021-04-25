#!/usr/bin/env bash

# Used for development of magic kit.

# It sets the config and data directories to be local to this directory. This
# allows me to run a Neovim instance loading this code as it's configuration
# without replacing my custom user configuration.

# I basically get a plain fresh instance based on this directory while still
# having access to the one stored in my home directory.

export XDG_CONFIG_HOME=.dev/config
export XDG_DATA_HOME=.dev/data

nvim "$@"
