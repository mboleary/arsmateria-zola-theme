#!/bin/bash

# Retrieves the fonts used for the website

RELEASE="2.300"
FILENAME_BASE="leaguemono"
FILENAME="$FILENAME_BASE.tar.xz"
DEST_DIR="static/font"

echo "Installing fonts..."

wget -O $FILENAME "https://github.com/theleagueof/league-mono/releases/download/$RELEASE/LeagueMono-$RELEASE.tar.xz"

mkdir -p $FILENAME_BASE

tar -xf $FILENAME -C $FILENAME_BASE --strip-components=1

mkdir -p $DEST_DIR

cp $FILENAME_BASE/static/WOFF2/* $DEST_DIR

# rm -r $FILENAME_BASE
# rm $FILENAME
