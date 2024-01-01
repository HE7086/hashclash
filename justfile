build MODE="Debug":
    #!/bin/bash
    cmake -B build -G "Ninja Multi-Config"
    cmake --build build --config {{MODE}}
    ln -sTf build/bin/{{MODE}} bin

clean:
    ninja -C build clean
    rm -rf bin
