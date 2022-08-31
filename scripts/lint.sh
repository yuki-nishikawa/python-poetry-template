#!/usr/bin/env bash

set -x

TOPDIR="."

poetry run mypy ${TOPDIR}
poetry run black ${TOPDIR} --check
poetry run isort --check-only ${TOPDIR}
poetry run flake8
