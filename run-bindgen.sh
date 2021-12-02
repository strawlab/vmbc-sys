#!/bin/bash
set -o errexit

bindgen /usr/local/vimba-5.0/include/VimbaC.h \
    --default-enum-style moduleconsts \
    --bitfield-enum VmbFeatureFlagsType --bitfield-enum VmbFrameFlagsType \
    --with-derive-partialeq \
    --distrust-clang-mangling \
    --raw-line '#![allow(dead_code,non_upper_case_globals,non_camel_case_types,non_snake_case)]' \
    -o src/lib.rs
