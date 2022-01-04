#!/usr/bin/env bash

set -x

TOPDIR="."

mypy ${TOPDIR}
black ${TOPDIR} --check
isort --check-only ${TOPDIR}
flake8
