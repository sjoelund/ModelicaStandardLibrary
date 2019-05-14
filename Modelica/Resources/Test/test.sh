#!/bin/sh -x

clang -g -L $PWD/../Library/linux64/ FileSystem.c -Wl,-Bstatic -lModelicaExternalC -Wl,-Bdynamic || exit 1
./a.out || exit 1
clang -g -L $PWD/../Library/linux64/ ModelicaStrings.c -Wl,-Bstatic -lModelicaExternalC -Wl,-Bdynamic || exit 1
./a.out || exit 1
clang -g -L $PWD/../Library/linux64/ Tables.c -Wl,-Bstatic -lModelicaStandardTables -lModelicaIO -lModelicaMatIO -lzlib -Wl,-Bdynamic -lm || exit 1
./a.out || exit 1
clang -g -L $PWD/../Library/linux64/ TablesNoUsertab.c -Wl,-Bstatic -lModelicaStandardTables -lModelicaIO -lModelicaMatIO -lzlib -Wl,-Bdynamic -lm || exit 1
./a.out || exit 1

clang -g -L $PWD/../Library/linux64/ -Wl,-rpath $PWD/../Library/linux64/ FileSystem.c -lModelicaExternalC || exit 1
./a.out || exit 1
clang -g -L $PWD/../Library/linux64/ -Wl,-rpath $PWD/../Library/linux64/ ModelicaStrings.c -lModelicaExternalC || exit 1
./a.out || exit 1
clang -g -L $PWD/../Library/linux64/ -Wl,-rpath $PWD/../Library/linux64/ Tables.c -lModelicaStandardTables -lModelicaIO -lModelicaMatIO || exit 1
./a.out || exit 1
clang -g -L $PWD/../Library/linux64/ -Wl,-rpath $PWD/../Library/linux64/ TablesNoUsertab.c -lModelicaStandardTables -lModelicaIO -lModelicaMatIO || exit 1
./a.out || exit 1
