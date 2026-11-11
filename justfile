# list recipes
default:
    @just --list

# set up the venv with dev tools
install:
    uv sync --extra dev

test:
    uv run pytest -q

lint:
    uv run ruff check .

# rewrite files in place
format:
    uv run ruff format .

# what CI runs; do this before pushing
check:
    uv run ruff format --check .
    uv run ruff check .
    uv run pytest -q

# wheel + sdist into dist/
build:
    uv build

# tag the version in __init__.py and push the tag (no PyPI upload)
release: check
    #!/usr/bin/env bash
    set -euo pipefail
    if [ -n "$(git status --porcelain)" ]; then
        echo "uncommitted changes, commit first"
        exit 1
    fi
    v=$(uv run python -c "import solvatochrome; print(solvatochrome.__version__)")
    git tag -a "v$v" -m "v$v"
    git push origin "v$v"
