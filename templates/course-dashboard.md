# Course Dashboard

> **Журнал** прохождения курса: blockers с evidence, last green check, module closure checklist, decisions (ADR), deferred/stretch, session log. Скопируй в корень учебного репо как `course-dashboard.md` и веди от руки.
>
> **Счётчик прогресса** (% закрытых уроков, streak, current module, next lesson, последняя активность, competencies %) живёт на сайте `/dashboard/` и обновляется чекбоксами «Урок закрыт» внизу каждого урока. Этот файл — то, что в галочку не помещается: почему сломалось, что решил, что отложил, что было зелёным в последний раз.

## Setup

| Поле | Значение |
| --- | --- |
| Weekly capacity | Например: `10 ч/неделю` |
| Current milestone | Под-чанк урока, если есть. Например: `M03.3 Dense baseline`. Иначе — пусто. |
| Next action | Один конкретный шаг на 30–90 минут. Например: реализовать stable `chunk_id` и добиться, чтобы повторный ingest показывал `0 new / 0 changed / 0 deleted`. |

Поля `current module` / `current lesson` / `last updated` не дублируем — они есть на `/dashboard/`.

## Blockers

| Blocker | Since | Evidence | Next diagnostic step |
| --- | --- | --- | --- |
|  |  |  |  |

Evidence — это команда, тест, log excerpt, failing eval case или ссылка на issue. Не пиши «не работает» без evidence.

## Last Green Check

| Check | Command / artifact | Date |
| --- | --- | --- |
| Local tests | `make test` | YYYY-MM-DD |
| Lint/typecheck | `make lint` | YYYY-MM-DD |
| Smoke | `make smoke` | YYYY-MM-DD |
| Eval scorecard | `evals/reports/<file>.json` | YYYY-MM-DD |

## Module Closure Checklist

Скопируй сюда критерий закрытия из README текущего модуля и отмечай прогресс.

- [ ] <criterion 1>
- [ ] <criterion 2>
- [ ] <criterion 3>

## Decisions

| Date | Decision | Rationale | Revisit when |
| --- | --- | --- | --- |
|  |  |  |  |

Примеры хороших decisions:

- выбрал pgvector вместо Qdrant для M03 baseline, потому что Postgres уже в scaffold;
- отложил reranker до stretch, потому что hybrid/RRF закрывает measured improvement;
- выбрал recruiting capstone, потому что есть demo-safe dataset и понятный KPI.

## Deferred / Stretch

| Item | Why deferred | Module to revisit |
| --- | --- | --- |
|  |  |  |

## Session Log

### YYYY-MM-DD

- Planned:
- Done:
- Checks:
- Next:
