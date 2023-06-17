#!/bin/bash

# Should be run from project root

ASSET_DIR="static/asset"

mkdir -p $ASSET_DIR

## Move feather-icons build file to assets
cp node_modules/feather-icons/dist/feather-sprite.svg $ASSET_DIR/feather-sprite.svg

## Move Style code into assets
# @TODO Do this when that gets made into a package

./script/install_fonts.sh