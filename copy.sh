#!/bin/sh

XCODEDIR=~/Library/Developer/Xcode

rsync -av --progress Templates $XCODEDIR --exclude *.sh --exclude .DS_Store
rsync -av --progress UserData $XCODEDIR --exclude *.sh --exclude .DS_Store
