# ai-agents-course

Стартовый workspace для курса **«AI Agent Engineer за 4–6 месяцев»** (production LLM-системы, RAG, tool-calling агенты, evals, reliability). Шаблонный репозиторий: жми **«Use this template»** или форкай, и через `make dev && make up && make test` у тебя зелёная инфраструктура — без бизнес-логики, без FastAPI-эндпоинтов, без LLM-вызовов. Всё это придёт начиная с Module 01.

## Что внутри

- `pyproject.toml` — PEP 621 + uv; deps + extras `dev` / `llm` под Anthropic и OpenAI SDK.
- `Makefile` — `make dev / up / down / fmt / lint / test / doctor / smoke`.
- `docker-compose.yml` — Postgres (pgvector) + Redis с healthchecks.
- `.pre-commit-config.yaml` — ruff, mypy, detect-secrets, базовые хуки.
- `ruff.toml`, `mypy.ini`, `.secrets.baseline` — конфиги линтера, тайп-чекера, scanner'а секретов.
- `.env.example` — образец переменных окружения; ключи (Anthropic / OpenAI) заполняешь перед Module 02.
- `tests/test_smoke.py` — placeholder, чтобы `make test` был зелёным на day 0.
- `templates/` — заготовки `positioning.md`, `progress.md`, `case-study.md`, `course-dashboard.md`. Копируй в корень по мере прохождения курса.

## Старт

Нужны установленные [`uv`](https://docs.astral.sh/uv/) и [Docker](https://www.docker.com/).

```bash
# 1. Создай свой репозиторий через GitHub: «Use this template» (зелёная кнопка).
# 2. Клонируй и зайди.
gh repo clone <your-user>/ai-agents-course
cd ai-agents-course

# 3. Подготовь окружение.
make dev                # uv sync --extra dev --extra llm + pre-commit install
cp .env.example .env    # заполнишь ANTHROPIC_API_KEY / OPENAI_API_KEY перед Module 02

# 4. Локальная инфра.
make up                 # postgres + redis
make doctor             # объяснит, чего ещё не хватает

# 5. Прогон проверок.
make lint && make test
pre-commit run --all-files
```

Если всё зелёное — ты на «day zero» курса. Дальше идёшь по модулям M00 → M07.

## Что НЕ входит

- **FastAPI / `/healthz` / `/readyz`** — это уже Module 01.
- **LLM-клиенты (Anthropic / OpenAI)** — Module 02 (SDK уже запинены в `pyproject.toml` extras, но клиент-обёртку и protocol-интерфейс ты пишешь там).
- **Лекционные материалы курса** — они держатся в основном репозитории курса; этот repo — только пустой production-ready workspace.

## Как пользоваться `templates/`

В `templates/` лежат markdown-заготовки, на которые ссылаются уроки M00:

- `positioning.md` — позиционирование себя на рынке (Part A / B / C). На M00 заполняешь Part A.
- `progress.md` — самооценка по 10 компетенциям AI agent engineer'а. Перепроходишь после каждого модуля.
- `course-dashboard.md` — журнал прохождения (blockers с evidence, last green check, decisions, session log).
- `case-study.md` — шаблон портфельного кейса. Заполняешь начиная с проектов M01.

Копируешь нужный файл в корень репозитория и редактируешь:

```bash
cp templates/progress.md .
cp templates/positioning.md .
cp templates/course-dashboard.md .
```

После копирования `make doctor` перестанет ругаться на missing-файлы.

## Лицензия

Контент `templates/` — CC BY-SA 4.0 (как у курса). Конфиги (pyproject, Makefile, docker-compose, ruff/mypy) — общедоступный шаблон, бери и переиспользуй.
