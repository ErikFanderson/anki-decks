#!/usr/bin/env bash

# Set PYTHONPATH accordingly
if [ -z "$PYTHONPATH" ]
then
    export PYTHONPATH=$PWD
else
    export PYTHONPATH=$PWD:$PYTHONPATH
fi

# Set MYPYPATH accordingly
if [ -z "$MYPYPATH" ]
then
    export MYPYPATH=$PWD/anki-decks
else
    export MYPYPATH=$PWD/anki-decks:$MYPYPATH
fi

# Set ANKI-DECKS_HOME variable
export ANKI-DECKS_HOME=$PWD
