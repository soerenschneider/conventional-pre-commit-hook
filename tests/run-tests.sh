#!/usr/bin/env bash

set -e
for testcase in tests/valid-*; do
    echo "trying $testcase"
    sh ./hooks/conventional-commit.sh $testcase
done

set +e
for testcase in tests/invalid-*; do
    echo "trying $testcase"
    sh ./hooks/conventional-commit.sh $testcase > /dev/null
    if [ $? -ne 1 ]; then
        echo " ...failed"
        false
    fi
done
