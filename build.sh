#!/usr/bin/env bash

# stop processing on basic errors
set -e

NETEX_REPO_NAME=transport-profil-netex-fr
NETEX_VERSION=order-sections
SIRI_VERSION=tags/v1.7
SIRI_REPO_NAME=transport-profil-siri-fr
TEMP_FOLDER=tmp
CONTENT_FOLDER=content/normes

function cloneContent() {
    repository=$1
    folder=$2
    ref=$3

    rm -rf $TEMP_FOLDER | true
    mkdir $TEMP_FOLDER && cd $TEMP_FOLDER

    git clone $repository
    cd $folder
    git checkout $ref
    cd ../..
}

rm -rf $CONTENT_FOLDER/NeTEx
cloneContent https://github.com/etalab/$NETEX_REPO_NAME.git $NETEX_REPO_NAME $NETEX_VERSION
cp -r $TEMP_FOLDER/$NETEX_REPO_NAME/NeTEx $CONTENT_FOLDER

rm -rf $CONTENT_FOLDER/SIRI
cloneContent https://github.com/etalab/$SIRI_REPO_NAME.git $SIRI_REPO_NAME $SIRI_VERSION
cp -r $TEMP_FOLDER/$SIRI_REPO_NAME/SIRI $CONTENT_FOLDER

hugo --minify
