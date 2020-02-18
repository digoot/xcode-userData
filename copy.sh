#!/bin/sh

XCODEDIR=$HOME/Library/Developer/Xcode/
WORKINGDIR=$PWD

cd $XCODEDIR

rsync -avrh --progress $WORKINGDIR/Templates . --exclude *.sh --exclude .DS_Store
rsync -avrh --progress $WORKINGDIR/UserData . --exclude *.sh --exclude .DS_Store
