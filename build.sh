#!/usr/bin/env bash

# stop processing on basic errors
set -e

# NOTE: temporarily freezing to the latest tag,
# ultimately something more flexible with be introduced
# (e.g. multi-version support, and first "automatic latest version")
SIRI_VERSION=v1.7
TEMP_FOLDER=tmp
CONTENT_FOLDER=content/normes
SIRI_REPO_NAME=transport-profil-siri-fr

echo "Retrieving content via git..."
git submodule update --init --remote $CONTENT_FOLDER

echo "Removing legacy SIRI content..."
rm -rf $CONTENT_FOLDER/SIRI

echo "Cloning new SIRI content..."
rm -rf $TEMP_FOLDER | true
mkdir $TEMP_FOLDER && cd $TEMP_FOLDER
git clone https://github.com/etalab/$SIRI_REPO_NAME.git
cd $SIRI_REPO_NAME
# just for debugging purposes
git tag -l
git checkout tags/$SIRI_VERSION
cd ../..

echo "Copying new SIRI content to the right place..."
cp -r $TEMP_FOLDER/$SIRI_REPO_NAME/SIRI $CONTENT_FOLDER

echo "Building site..."
hugo --minify
