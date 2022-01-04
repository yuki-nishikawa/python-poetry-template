#!/bin/sh -e
set -x

TOPDIR="."

autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place ${TOPDIR} --exclude=__init__.py
black ${TOPDIR}
isort ${TOPDIR}
