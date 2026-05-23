# M00 Scaffold — готовые файлы

Скопируй содержимое этой папки в корень своего нового репозитория `ai-agents-course/` **вместе с dotfiles** (`.env.example`, `.gitignore`, `.pre-commit-config.yaml`, `.secrets.baseline`). Безопасная команда — точка в конце source-пути:

```bash
cp -R /path/to/ai-dev-course/docs/module-00-intro/scaffold/. .
```

`cp -R scaffold/* .` (звёздочка без точки) **пропустит** dotfiles в большинстве шеллов — не используем эту форму.

Если копируешь scaffold из локального checkout курса, сначала убедись, что в source-папке нет ignored runtime-мусора: `.venv/`, `.pytest_cache/`, `__pycache__/`, `.mypy_cache/`, `.ruff_cache/`. Эти директории не коммитятся, но обычный `cp -R .../. .` всё равно скопирует их в учебный репозиторий.

Потом проверь `.env.example` и доделай TODO-комментарии в `pyproject.toml` (минор-версии могут устареть к моменту чтения). **Не понижай** минимум-версии SDK `anthropic` и `openai`: они выставлены под фичи M02 (structured outputs API). Поднимать вверх можно и нужно.

После копирования и `uv sync --extra dev --extra llm` у тебя должен зелёным проходить полный чек-лист из [lesson 00.4](../lesson-04-setup.md):

- `make up` → `docker compose ps` показывает `postgres` и `redis` со статусом `running (healthy)`.
- `make lint && make test` зелёные.
- `pre-commit run --all-files` зелёный.
- `make doctor` показывает missing/todo пункты понятным текстом, без поиска по всем урокам.

Никакого FastAPI / `/healthz` / `/readyz` тут нет — это задача [Module 01](../../module-01-base/README.md).

## Содержимое

| Файл | Назначение |
| --- | --- |
| `pyproject.toml` | PEP 621 + uv; dependencies + extras dev / llm. |
| `Makefile` | root-level `make dev / up / down / fmt / lint / test / doctor / smoke`. |
| `docker-compose.yml` | postgres (pgvector) + redis с healthchecks. |
| `.pre-commit-config.yaml` | ruff, mypy, detect-secrets, базовые хуки. |
| `ruff.toml` | конфиг линтера и форматтера. |
| `mypy.ini` | конфиг тайпчека. |
| `.env.example` | шаблон секретов. |
| `.gitignore` | базовый игнор. |
| `.secrets.baseline` | стартовый baseline для `detect-secrets` (пустой `results`). |
| `tests/test_smoke.py` | dummy-тест чтобы `make test` был зелёным. |

## Создание пустых пакетов

После копирования файлов выполни:

```bash
mkdir -p shared/{llm,telemetry,schemas} projects/{01-llm-service,02-extract-service,03-knowledge-bot,04-ops-agent,05-triage-agent,07-capstone} evals tests
touch shared/__init__.py shared/{llm,telemetry,schemas}/__init__.py
for p in projects/*/; do echo "# $(basename $p) — заполняется в соответствующем модуле." > "$p/README.md"; done
```

Опционально пересобери `.secrets.baseline` под реальное состояние репо:

```bash
uv run detect-secrets scan --baseline .secrets.baseline
```

И коммит: `chore: bootstrap monorepo`.
