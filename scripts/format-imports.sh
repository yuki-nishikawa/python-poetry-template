#!/bin/sh -e
set -x

TOPDIR="."

# Sort imports one per line, so autoflake can remove unused imports
poetry run isort --force-single-line-imports ${TOPDIR}
sh ./scripts/format.sh
