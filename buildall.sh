#!/bin/bash

set -e

docker build -t rust-crossbuild .

# Use -u so the resulting binaries are owned by the host user

# linux
docker run --rm -u $(id -u):$(id -g) -v $(pwd):/workdir rust-crossbuild /usr/local/rust/bin/cargo build

# windows
docker run --rm -u $(id -u):$(id -g) -v $(pwd):/workdir -e CROSS_TRIPLE=x86_64-w64-mingw32 rust-crossbuild /usr/local/rust/bin/cargo build --target=x86_64-pc-windows-gnu

# macos
docker run --rm -u $(id -u):$(id -g) -v $(pwd):/workdir -e RUSTFLAGS="-C linker=/workdir/macbuild.sh" -e CROSS_TRIPLE=x86_64-apple-darwin rust-crossbuild /usr/local/rust/bin/cargo build --target=x86_64-apple-darwin

