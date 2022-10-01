init:
	poetry install

format:
	sh scripts/format-imports.sh
	sh scripts/lint.sh
