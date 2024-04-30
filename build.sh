#!/usr/bin/env bash

# not perfect, but better than nothing
set -e

echo "Retrieving content via git..."
git submodule update --init --remote content/normes

echo "Removing legacy SIRI content..."
rm -rf content/normes/SIRI

echo "Building site..."
hugo --minify
