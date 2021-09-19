#!/bin/bash

if test -f "$1"; then
    cat "$1"
else
    cat "$2"
fi
