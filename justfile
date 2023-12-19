build MODE="Debug":
    #!/bin/bash
    export CUDACXX=/opt/cuda/bin/nvcc
    export CUDAHOSTCXX=/usr/bin/g++-12 
    cmake -B build -G "Ninja Multi-Config"
    cmake --build build --config {{MODE}}
    rm -rf bin && ln -sf build/bin/{{MODE}} bin

clean:
    ninja -C build clean
    rm -rf bin
