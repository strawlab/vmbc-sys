# vimba-sys

[![Crates.io](https://img.shields.io/crates/v/vimba-sys.svg)](https://crates.io/crates/vimba-sys)

Rust wrapper of the Vimba library for Allied Vision cameras

## Building

To build:

    cargo build

## Regenerate the bindings

To regenerate the bindings on Windows:

    .\run-bindgen-windows.bat

To regenerate the bindings on unix:

    ./run-bindgen.sh

## Run example

There is an example of usage in `examples/synchronous-grab.rs`.

To run the example:

    cargo run --example synchronous-grab

On Windows, you must ensure that `VimbaC.dll` is in your `PATH`.

## Code of conduct

Anyone who interacts with this software in any space, including but not limited
to this GitHub repository, must follow our [code of
conduct](code_of_conduct.md).

## License

This crate is Copyright (C) 2021 Andrew Straw <strawman@astraw.com>.

Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
http://www.apache.org/licenses/LICENSE-2.0> or the MIT license <LICENSE-MIT or
http://opensource.org/licenses/MIT>, at your option. This file may not be
copied, modified, or distributed except according to those terms.

Note that this license only covers this Rust crate. The underlying Vimba library
has different license terms.
