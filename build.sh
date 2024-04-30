#!/usr/bin/env bash

# not perfect, but better than nothing
set -e

echo "Retrieving content via git..."
git submodule update --init --remote content/normes

echo "Building site..."
hugo --minify
