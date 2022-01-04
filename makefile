init:
	poetry install

check:
	sh scripts/format-imports.sh
	sh scripts/lint.sh
