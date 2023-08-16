#!/usr/bin/env bash

git pull origin main
git submodule update --recursive
./build.sh