@REM Download llvm from https://releases.llvm.org/download.html
set LIBCLANG_PATH=C:\Program Files\LLVM\bin
bindgen.exe "C:\Program Files\Allied Vision\Vimba_5.0\VimbaC\Include\VimbaC.h" --default-enum-style moduleconsts --bitfield-enum VmbFeatureFlagsType --bitfield-enum VmbFrameFlagsType --with-derive-partialeq --distrust-clang-mangling --raw-line #![allow(dead_code,non_upper_case_globals,non_camel_case_types,non_snake_case)] -o src\lib.rs
