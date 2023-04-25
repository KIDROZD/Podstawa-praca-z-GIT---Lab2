#!/bin/bash

while [ $# -gt 0 ]; do
    case "$1" in
        --date)
            date
            exit 0
            ;;
        --logs)
            shift
            if [[ $1 =~ ^-?[0-9]+$ ]]; then
                n=${1#-}
                for i in $(seq 1 $n); do
                    echo "Nazwa pliku: log$i.txt" > log$i.txt
                    echo "Komenda: $0" >> log$i.txt
                    echo "Data stworzenia pliku: $(date)" >> log$i.txt
                done
            else
                for i in {1..100}; do
                    echo "Nazwa pliku: log$i.txt" > log$i.txt
                    echo "Komenda: $0 $1" >> log$i.txt
                    echo "Data stworzenia pliku: $(date)" >> log$i.txt
                done
                exit 1
            fi
            exit 0
            ;;
        --help)
            echo "Poniżej opcje do wykorzystania skryptu:"
            echo "--date - wyświetl dzisiejszą datę"
            echo "--logs - stwórzy 100 plików log.txt"
            echo "--logs [x] - [x] podaj liczbę plików log.txt do utworzenia"
            exit 0
            ;;
    esac
    shift
done