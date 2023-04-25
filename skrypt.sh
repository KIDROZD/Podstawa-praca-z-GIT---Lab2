#!/bin/bash

while [ $# -gt 0 ]; do
    case "$1" in
        --date)
            date
            exit 0
            ;;
    esac
    shift
done