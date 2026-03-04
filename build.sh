#!/usr/bin/env bash

# stop processing on basic errors
set -e

CONTENT_FOLDER=content/normes

# NOTE: freezing to the tag matching the latest official release,
# ultimately something more flexible with be introduced
# (e.g. multi-version support, and first "automatic latest version")
SIRI_VERSION=v1.7
NETEX_VERSION=v2.4.0
LOCAL_TEMP_FOLDER=./tmp
SIRI_REPO_NAME=transport-profil-siri-fr
NETEX_REPO_NAME=transport-profil-netex-fr

echo "Preparing local clones of repositories"
rm -rf $LOCAL_TEMP_FOLDER

function checkout_tag() {
    local repo_name="$1"
    local tag="$2"
    echo "Checking out repo ${repo_name} at tag ${tag}"
    git -c advice.detachedHead=false clone \
        --depth 1 --single-branch \
        --branch "${tag}" \
        "https://github.com/etalab/${repo_name}.git" \
        $LOCAL_TEMP_FOLDER/${repo_name}
}

# added so that I can work on a non-released branch, given a specific commit.
function checkout_commit() {
    local repo_name="$1"
    local branch="$2"
    local commit="$3"
    echo "Checking out repo ${repo_name} at commit ${commit}"
    git clone \
        "https://github.com/etalab/${repo_name}.git" \
        $LOCAL_TEMP_FOLDER/${repo_name}
    git -c advice.detachedHead=false \
        -C $LOCAL_TEMP_FOLDER/${repo_name} \
        checkout "${commit}"
}

git submodule update --init themes/PaperMod

checkout_tag "$NETEX_REPO_NAME" "$NETEX_VERSION"
checkout_tag "$SIRI_REPO_NAME" "$SIRI_VERSION"

echo "Debugging pre-existing content"
tree $CONTENT_FOLDER

echo "Copying cloned NeTEx content to the right place..."
cp -r $LOCAL_TEMP_FOLDER/$NETEX_REPO_NAME/NeTEx $CONTENT_FOLDER

echo "Copying cloned SIRI content to the right place..."
cp -r $LOCAL_TEMP_FOLDER/$SIRI_REPO_NAME/SIRI $CONTENT_FOLDER

echo "Building site..."
hugo --minify
