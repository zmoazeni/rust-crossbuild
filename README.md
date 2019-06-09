# Example of cross compiling Rust

This is an example of using [multiarch/crossbuild](https://github.com/multiarch/crossbuild) to cross compile a rust binary for Linux, macos, and Windows.

Hat tip to https://github.com/japaric/rust-cross/issues/22#issuecomment-409065280 for the inspiration.

## How to use it

Run `./buildall.sh` to build all binaries.

## How this works

This builds a docker image based on [multiarch/crossbuild](https://github.com/multiarch/crossbuild) including rust and rustup targets for Linux, macos, and Windows. Then runs cargo build commands passing the appropriate ENV and params.

Linux and Windows are straightforward, but with macos you have to pass an extra parameter to the linker.

## Legal note

OSX/Darwin/Apple builds: [Please ensure you have read and understood the Xcode license terms before continuing.](https://www.apple.com/legal/sla/docs/xcode.pdf)

## License

MIT
