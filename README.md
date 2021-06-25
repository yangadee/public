# public

- Use `Cmake` to build the program:

    ```
    mkdir build
    cd build
    cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release  ..
    make
    ```
-Notes:
    - The `Makefile` cannot build the static program in this project.
    - This program has been tested in raspberry pi 3B+.