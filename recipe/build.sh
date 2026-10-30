#!/bin/bash
set -eo pipefail

cmake -B build -S "${SRC_DIR}" ${CMAKE_ARGS} -GNinja \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_CXX_STANDARD="$(root-config --cxxstandard)"
cmake --build build --parallel "${CPU_COUNT}"
cmake --install build
