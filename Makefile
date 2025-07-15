MAKEFLAGS += --warn-undefined-variables
SHELL := bash

.PHONY: install
install: .venv/

.venv/:
	uv sync

.PHONY: docs-serve
docs-serve: .venv/
	uv run mkdocs serve

.PHONY: docs-build
docs-build: .venv/
	uv run mkdocs build
