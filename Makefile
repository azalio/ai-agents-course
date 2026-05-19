.PHONY: dev up down fmt lint test doctor smoke help

# Compose runtime: prefer `docker compose` (CLI plugin), fall back to podman.
# Set COMPOSE=... explicitly if auto-detect picks the wrong one.
COMPOSE ?= $(shell \
  if docker compose version >/dev/null 2>&1; then echo docker compose; \
  elif podman compose version >/dev/null 2>&1; then echo podman compose; \
  elif command -v podman-compose >/dev/null 2>&1; then echo podman-compose; \
  else echo MISSING; fi)

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "%-12s %s\n", $$1, $$2}'

dev:        ## install deps (main + dev + llm extras)
	uv sync --extra dev --extra llm
	uv run pre-commit install

up:         ## start local infra (postgres + redis)
	@if [ "$(COMPOSE)" = "MISSING" ]; then \
	  echo "[fatal] no compose runtime — install Docker Desktop or 'brew install podman-compose'"; exit 1; \
	fi
	$(COMPOSE) up -d

down:       ## stop local infra
	@if [ "$(COMPOSE)" = "MISSING" ]; then exit 0; fi
	$(COMPOSE) down

fmt:        ## format & autofix
	uv run ruff format .
	uv run ruff check --fix .

lint:       ## lint + typecheck
	uv run ruff check .
	uv run mypy .

test:       ## run pytest
	uv run pytest

doctor:     ## explain current local setup status
	@printf "Checking local course setup...\n"
	@command -v uv >/dev/null && printf "[ok] uv\n" || printf "[missing] uv - install before make dev\n"
	@if [ "$(COMPOSE)" = "MISSING" ]; then \
	  printf "[missing] compose runtime - install Docker Desktop OR 'brew install podman podman-compose'\n"; \
	else \
	  printf "[ok] compose runtime: %s\n" "$(COMPOSE)"; \
	fi
	@test -f .env.example && printf "[ok] .env.example\n" || printf "[missing] .env.example - copy scaffold dotfiles\n"
	@test -f progress.md && printf "[ok] progress.md\n" || printf "[todo] progress.md - copy docs/module-00-intro/templates/progress.md\n"
	@test -f positioning.md && printf "[ok] positioning.md\n" || printf "[todo] positioning.md - copy docs/module-00-intro/templates/positioning.md\n"
	@test -f course-dashboard.md && printf "[ok] course-dashboard.md\n" || printf "[todo] course-dashboard.md - copy docs/module-00-intro/templates/course-dashboard.md\n"

smoke:      ## quick smoke: up + lint + test
	$(MAKE) up
	$(MAKE) lint
	$(MAKE) test
