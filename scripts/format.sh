#!/bin/sh -e
set -x

TOPDIR="."

poetry run autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place ${TOPDIR} --exclude=__init__.py
poetry run black ${TOPDIR}
poetry run isort ${TOPDIR}
