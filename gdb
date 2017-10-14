#!/bin/sh

gdb="`sed -n 's/\s*CROSS.*=\s*//p' Makefile`gdb"

"$gdb" -ex "tar rem :3333" -ex "mon reset halt" -ex lo "$@"
