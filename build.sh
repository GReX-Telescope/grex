#!/usr/bin/env bash

# Build T0
cd t0
if ! command -v cargo &> /dev/null
then
    echo "cargo could not be found, is the rust toolchain installed?"
    exit
else
    cargo build --release
fi
cd ..

# Build T2
cd t2
if ! command -v poetry &> /dev/null
then
    echo "poetry could not be found, is it installed?"
    exit
else
    poetry install
fi
cd ..

# Build snap_bringup
cd snap_bringup
if ! command -v poetry &> /dev/null
then
    echo "poetry could not be found, is it installed?"
    exit
else
    poetry install
fi
cd ..
