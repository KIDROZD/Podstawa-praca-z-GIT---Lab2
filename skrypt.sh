#!/bin/bash

while [ $# -gt 0 ]; do
    case "$1" in
        --date)
            date
            exit 0
            ;;
        --logs)
            for i in {1..100}; do
                echo "Nazwa pliku: log$i.txt" > log$i.txt
                echo "Komenda: $0" >> log$i.txt
                echo "Data stworzenia pliku: $(date)" >> log$i.txt
            done
            exit 0
            ;;
    esac
    shift
done