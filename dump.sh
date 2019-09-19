#!/bin/sh

XCODEDIR=~/Library/Developer/Xcode
WORKINGDIR=pwd

rsync -av $XCODEDIR/Templates ($WORKINGDIR) --exclude .DS_Store
rsync -av $XCODEDIR/UserData/CodeSnippets ($WORKINGDIR)/UserData/CodeSnippets --exclude .DS_Store
rsync -av $XCODEDIR/UserData/KeyBindings ($WORKINGDIR)/UserData/KeyBindings --exclude .DS_Store
rsync -av $XCODEDIR/UserData/FontAndColorThemes ($WORKINGDIR)/UserData/FontAndColorThemes --exclude .DS_Store
