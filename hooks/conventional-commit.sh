#!/usr/bin/env bash

set -e
set -o pipefail

pattern="^(feat|fix|build|chore|ci|docs|style|refactor|perf|test)(\(\w+\))?\!?\:\s\w+.*\S$"

msg_file=$1

if [ ! -f "${msg_file}" ]; then
    echo "no such file: ${msg_file}"
    exit 1
fi

if ! head -n1 "${msg_file}" | grep -qE "${pattern}"; then
    echo "Commit message(s):"
    echo "---"
    cat ${msg_file}
    echo "---"
    echo ""
    echo "Your commit message(s) do not seem to follow the conventional commit message format."
    echo "Check https://www.conventionalcommits.org"
    exit 1
fi
