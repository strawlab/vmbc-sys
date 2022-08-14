#!/bin/bash
set -o errexit

bindgen /opt/vimba/Vimba_6_0/VimbaC/Include/VimbaC.h \
    --dynamic-loading VimbaC \
    --default-enum-style moduleconsts \
    --bitfield-enum VmbFeatureFlagsType --bitfield-enum VmbFrameFlagsType \
    --with-derive-partialeq \
    --distrust-clang-mangling \
    --raw-line '#![allow(dead_code,non_upper_case_globals,non_camel_case_types,non_snake_case)]' \
    -o src/lib.rs
