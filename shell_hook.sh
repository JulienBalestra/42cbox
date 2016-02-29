#!/usr/bin/env bash

set -ex

TARGET=/tmp/42cbox
REPO=$1

function clone_repo
{
    git clone ${REPO} ${TARGET}
}

function setup_repo
{
    cd ${TARGET}
    ./setup.sh
}

function test_repo
{
    cd ${TARGET}
    ./run_test.sh
}

function clean_repo
{
    rm -Rf ${TARGET}
}

function is_repo
{
    if [ -z ${REPO} ]
    then
        cat << EOF >&2
Please send me a git repository with the following files:
    root/setup.sh
    root/run_test.sh
EOF
        exit 2
    fi
}

is_repo
clone_repo
setup_repo
test_repo
clean_repo