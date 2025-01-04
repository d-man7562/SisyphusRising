#!/bin/sh
echo -ne '\033c\033]0;2D_Testing\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Sisyphus Rising!.x86_64" "$@"
