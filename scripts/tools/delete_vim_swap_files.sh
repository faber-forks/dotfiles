#! /bin/bash -

# Delete vim swap files in the given directory

# Unoffical Bash "strict mode"
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\t\n' # Stricter IFS settings
ORIGINAL_IFS=$IFS

# Variables
directory=${1:-}

usage() {
    cat <<EOF
    Usage: delete_vim_swap_files.sh [directory]
EOF
}

delete_vim_swap_files() {
    directory=${1:-}
    find $directory -type f -name "*.swp" -delete
}

if [ "z" = "z$directory" ]; then
    usage
else
    delete_vim_swap_files $directory
fi
