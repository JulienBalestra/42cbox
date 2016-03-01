# Docker C Box

Project to easily setup and test 42 git repository over Debian

[Docker hub](https://hub.docker.com/r/julienbalestra/42cbox/)

## Packages

* build-essential
* python
* git
* valgrind
* libncurses5-dev

## Hook

The entrypoint is a shell hook who takes an address of a git repository.
Inside this repository, root based, you must have two scripts named exactly like:

* setup.sh # Setting git sub-module, checking packages, ...
* run_test_.sh # Make the project and test-it