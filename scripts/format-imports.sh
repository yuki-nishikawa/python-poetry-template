#!/bin/sh -e
set -x

TOPDIR="."

# Sort imports one per line, so autoflake can remove unused imports
isort --force-single-line-imports ${TOPDIR}
sh ./scripts/format.sh
