#!/bin/sh

XCODEDIR=$HOME/Library/Developer/Xcode
WORKINGDIR=$PWD

rsync -av $XCODEDIR/Templates $WORKINGDIR --exclude .DS_Store
rsync -av $XCODEDIR/UserData/CodeSnippets $WORKINGDIR/UserData --exclude .DS_Store
rsync -av $XCODEDIR/UserData/KeyBindings $WORKINGDIR/UserData --exclude .DS_Store
rsync -av $XCODEDIR/UserData/FontAndColorThemes $WORKINGDIR/UserData --exclude .DS_Store
