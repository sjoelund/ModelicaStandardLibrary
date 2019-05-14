#!/bin/sh -x

for f in FileSystem.c ModelicaStrings.c Tables.c TablesNoUsertab.c ; do
  clang -g -L $PWD/../Library/linux64/ Tables.c -lModelicaStandardTables -lModelicaIO -lModelicaMatIO -lz -lm || exit 1
  ./a.out || exit 1
done
