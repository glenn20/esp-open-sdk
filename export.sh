# Source this script to setup environment

if [ "${BASH_SOURCE-}" = "$0" ]; then
    echo "You must source this script: \$ source $0" >&2
    exit 33
fi

# Get the full name of this script for bash or zsh
source_name=${BASH_SOURCE:-${(%):-%x}}
# Normalise the path and get the directory name
base_dir=$(dirname $(readlink -f ${source_name}))

# Set the path based on the location of this file.
export PATH="${base_dir}/xtensa-lx106-elf/bin:${PATH}"
