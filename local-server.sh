#!/bin/bash

## At least needs to be v0.97.0

## hugo server (default), renders to and serves all files from memory.
## hugo server --renderToDisk, renders to and serves all files from disk.
## hugo server --renderStaticToDisk (the new hybrid mode), renders to and serves static files from disk, dynamic files from memory.
##

HUGO_FULLVERSION=$(hugo version | cut -d' ' -f2)
HUGO_MAJORVER=$(echo $HUGO_FULLVERSION | cut -d'.' -f1)
HUGO_MINORVER=$(echo $HUGO_FULLVERSION | cut -d'.' -f2)
HUGO_PATCHVER=$(echo $HUGO_FULLVERSION | cut -d'.' -f3)

if [[ $HUGO_MAJORVER -eq 0 ]] && [[ $HUGO_MINORVER -ge 97 ]]; then
  hugo server --renderStaticToDisk
else
  hugo server
fi
