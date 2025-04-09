#!/usr/bin/env bash

dir="$HOME/.config/rofi/launcher/"
theme='config'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
