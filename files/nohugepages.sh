#!/bin/sh

case "$1" in
    stop)
        echo "madvise" > /sys/kernel/mm/transparent_hugepage/enabled
        echo "madvise" > /sys/kernel/mm/transparent_hugepage/defrag
        ;;
    *)
        echo "never" > /sys/kernel/mm/transparent_hugepage/enabled
        echo "never" > /sys/kernel/mm/transparent_hugepage/defrag
        ;;
esac
