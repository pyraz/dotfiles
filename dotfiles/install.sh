#!/usr/bin/env bash

current_dir=$(cd $(dirname "$0") && pwd)
dot_files_dir=$(cd "$current_dir/.." && pwd)

source "$dot_files_dir/lib.sh"

create_link "$current_dir/ctags"
create_link "$current_dir/dircolors"
create_link "$current_dir/gitignore_global"
create_link "$current_dir/git_template"

copy_file "$current_dir/gitconfig"
