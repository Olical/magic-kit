#!/usr/bin/env bash

NVIM_CMD=${NVIM_CMD:-nvim}
LUA_DIR=${LUA_DIR:-$HOME/.config/nvim/lua}
$NVIM_CMD +qa
$NVIM_CMD +"au User PackerComplete qa" +PackerSync +TSUpdateSync $@
