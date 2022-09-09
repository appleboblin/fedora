#!/usr/bin/env bash

dir="$HOME/.config/rofi/launcher/"
theme='style-1'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
