#!/usr/bin/env bash

set -e
set -x

poetry run pytest --cov=. --cov-report=term-missing ./tests "${@}"
