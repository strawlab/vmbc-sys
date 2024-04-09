#!/bin/bash
set -o errexit

VIMBA_X_HOME="/opt/VimbaX_2023-4"

bindgen ${VIMBA_X_HOME}/api/include/VmbC/VmbC.h \
    --dynamic-loading VimbaC \
    --default-enum-style moduleconsts \
    --bitfield-enum VmbFeatureFlagsType --bitfield-enum VmbFrameFlagsType \
    --with-derive-partialeq \
    --distrust-clang-mangling \
    --raw-line '#![allow(dead_code,non_upper_case_globals,non_camel_case_types,non_snake_case)]' \
    -o src/lib.rs \
    -- -I${VIMBA_X_HOME}/api/include
