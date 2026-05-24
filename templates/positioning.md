# Positioning / Intent

> Шаблон, который заставляет тебя сформулировать «зачем я здесь» до того, как начнёшь писать код. Скопируй в корень репо как `positioning.md`. Файл живёт **всю длину курса**: возвращайся каждый месяц, обновляй.

## Выбери свой трек

Не каждый студент проходит курс ради смены работы. Сначала определись, какой путь твой — от этого зависит, какие секции заполнять:

- **🎯 Job-hunt / career transition.** Цель — через 6 месяцев перейти на роль уровня Applied AI / AI Agent Engineer (внешний рынок). Заполняешь **всю Part A**, включая A.6 vacancy validation (3–5 часов сверки с реальными вакансиями).
- **📈 Skill upgrade без активного поиска.** Цель — добавить AI-компетенции к текущей работе, internal transition внутри компании, capstone как pet-проект, или просто не отстать от рынка. Заполняешь только **A.2 (цель)**, **A.4 (домен)**, **A.7 (self-assessment 10 компетенций)** — этого достаточно, чтобы понять «куда я качаю навыки и где я сейчас». Секции A.1, A.3, A.5, A.6 для тебя опциональны; если когда-нибудь решишь job-hunt'ить — вернёшься и заполнишь.

Запиши свой выбор:

```
Track: <job-hunt | skill-upgrade>
Reason: <одна строка — почему этот трек, что хочешь к концу курса>
```

---

## Часть A — Module 00

> Заполни в первые 3–4 дня курса. Не требует ни capstone-выбора, ни цифр evals. Какие секции для тебя обязательны — зависит от выбранного трека выше.

### A.1 Headline 🎯 *(только job-hunt трек; skill-upgrade — пропусти)*

Один абзац для LinkedIn / резюме / outreach. Формат: `[Должность] [глагол] [domain]+ [результат]`.

> Пример:
> _Applied AI Engineer building production LLM agents for ops and support automation — RAG, tool-using agents, evals, guardrails._

```
<здесь>
```

### A.2 Через 6 месяцев — обязательно для обоих треков

Кем я хочу быть и кому буду полезен. 5–10 предложений. Опираюсь на 10 компетенций AI Agent Engineer — список и шкала 0–3 в секции A.7 ниже. Для skill-upgrade трека пиши не «целевая роль», а **«чем я буду полезен на текущей работе через 6 месяцев»**: какой workflow в команде закроешь, какую компетенцию внутри команды добавишь, какой internal-портфельный кейс соберёшь.

> Пример 🎯 **job-hunt** трек:
> _Через 6 месяцев перейду на роль Applied AI / AI Agent Engineer в B2B SaaS компании среднего размера (50–500 человек) или AI-first startup. Буду собирать production LLM-системы: классификация и extraction поверх Anthropic/OpenAI API с structured outputs и evals, RAG на корпоративные knowledge base'ы (pgvector / Qdrant) с retrieval evals и refusal'ом, tool-calling агенты под operational workflows (триаж тикетов / синтез отчётов / job-search assistants) с permission boundaries и audit log. Сильные стороны на входе — Python backend (FastAPI / async / Postgres), DevOps-base; качаю prompt engineering (1→3), RAG (0→2), tool use и evals (0→2). К концу курса предъявляю на собесах: 4 рабочих сервиса (`llm-service`, `extract-service`, `knowledge-bot`, `ops-agent`) с CASE\_STUDY.md и scorecards, hardened вариант одного из них (M06), capstone-проект под выбранный домен (поддержка / sales / dev tools). Не претендую на роли GenAI/ML researcher, fine-tuning, custom model training — это другая компетенция._

> Пример 📈 **skill-upgrade** трек:
> _Через 6 месяцев у меня в команде backend-разработки внутри [текущая компания] закрыт один реальный AI-workflow: автоматизация триажа bug reports из support → классификация → создание Jira issue с structured fields. Уверенно собираю production LLM-feature: structured outputs с evals, fallback на cheaper model при rate limit'е, retry с idempotency, observability через Langfuse, regression gate в CI на schema conformance. Понимаю, когда RAG нужен, когда tool use, когда обычный prompt; могу аргументированно отказаться от LLM в feature, где он не нужен. К концу курса в портфолио внутри компании: одна реально внедрённая фича + 3 hands-on проекта из курса как proof-of-skill. Если когда-нибудь решу job-hunt'ить — вернусь и заполню A.1 / A.3 / A.6._

```
<здесь>
```

### A.3 Целевые роли 🎯 *(только job-hunt трек; skill-upgrade — пропусти)*

3–5 тайтлов, на которые я подаюсь:

- Applied AI Engineer
- AI Agent Engineer
- LLM Systems Engineer
- AI Automation Engineer

### A.4 Target domain (грубо) — обязательно для обоих треков

Какой **домен** я нацелен исследовать. На этом этапе достаточно `primary` + 1–2 `adjacent` — грубая разметка. Детальный выбор и метрики делаются перед capstone'ом в M07; **здесь не нужно искать «правильный» ответ**, нужна стартовая гипотеза, которую через 6 месяцев пересмотришь.

11 доменов на 2026 в порядке убывания «лёгкости продать» снаружи (CV / собес / outreach hiring manager'у). Не путать с «лёгкостью реализации» — некоторые внизу списка проще собрать как pet-проект, но сложнее продать. Выбирай по тому, **зачем тебе курс** (job-hunt vs skill-upgrade) и где у тебя реальный доступ к данным:

1. **Engineering productivity / coding agents** — PR-агенты, code review, миграции, docs-копилоты. Понятная аудитория, высокая ценность.
2. **DevOps / SRE remediation** — агент ловит алерты, диагностирует по логам/metrics, предлагает (или с approval'ом выполняет) restart / scale / rollback. Стек: PagerDuty / Grafana / Datadog / k8s / Terraform.
3. **Customer support** — Tier-1 ассистенты, knowledge-bots, deflection. Универсальная боль любого SaaS.
4. **Sales / RevOps** — inbound lead triage, CRM enrichment, follow-up, contract drafting.
5. **Recruiting / HR** — резюме-скрининг, outreach personalization, scheduling agent.
6. **Internal knowledge / copilots** — «спроси у вики», onboarding-agent, policy-агент.
7. **AP / invoice processing** — парсинг инвойсов (PDF/EDI), сверка с PO/контрактом, 3-way match, маршрутизация на approval. Очень понятный ROI.
8. **Finance ops (прочее)** — expense review, vendor onboarding, fraud screening.
9. **Legal docs** — contract review, clause extraction, compliance check.
10. **ERP / backoffice workflow automation** — procurement, inventory, vendor management. Самый дорогой B2B-сегмент, самый сложный заход.
11. **Marketing content / brand voice** — brand-aware copy, image, social. Больше про content-marketing продукты, чем enterprise.

> **«Universal AI assistant» — НЕ в списке.** Если в твоём `primary` стоит «AI-помощник для всего» — это анти-паттерн, делай узкое.
>
> **Особый случай — personal job-search agent.** Не enterprise-вертикаль, а product-of-one: сервис, который ежедневно шлёт тебе в Telegram релевантные вакансии. Засчитывается как capstone только если ты реально на рынке. Иначе — side-track M04, не capstone.

Заполни (домен можно своими словами или взять из списка):

```
- Primary: <домен — что собираешься исследовать как основной>
- Adjacent: <домен 1>, <домен 2>  (1–2 смежных, куда navыки переносимы)
```

> Пример (Engineering productivity primary): _Primary: Engineering productivity (coding agents для small Python codebases). Adjacent: DevOps SRE remediation (близкий стек: алерты + runbook agents), Internal knowledge (общая RAG-инфраструктура переносится). Не иду в: legal / finance / brand content — нет домена и нет данных._

### A.5 Чего я НЕ продаю 🎯 *(только job-hunt трек; skill-upgrade — пропусти)*

Ярлыки, к которым я НЕ применяю в публичных материалах:

```
- "AI enthusiast"
- "GPT-разработчик"
- "Universal AI assistant builder"
- "I'm passionate about AI"
- <дополни своими>
```

### A.6 Vacancy validation (≥ 10 вакансий) 🎯 *(только job-hunt трек; skill-upgrade — пропусти)*

> Обязательный блок для job-hunt трека. Без него позиционирование — авторская гипотеза курса, а не сверка с рынком. Источники: LinkedIn / HN Who's Hiring / Wellfound / hh.ru / Хабр Карьера / целевые компании напрямую. Бюджет — 3–5 часов.
>
> **Если ты на skill-upgrade треке**, пропусти эту секцию. Когда соберёшься job-hunt'ить (через год / два / никогда) — вернёшься и заполнишь. До этого момента эти 3–5 часов лучше потратить на M01 hands-on.

#### Список

| # | Company | Title | Region / Remote | Top requirements (3–5) | Стек | Ссылка |
|---|---------|-------|-----------------|------------------------|------|--------|
| 1 |         |       |                 |                        |      |        |
| 2 |         |       |                 |                        |      |        |
| 3 |         |       |                 |                        |      |        |
| 4 |         |       |                 |                        |      |        |
| 5 |         |       |                 |                        |      |        |
| 6 |         |       |                 |                        |      |        |
| 7 |         |       |                 |                        |      |        |
| 8 |         |       |                 |                        |      |        |
| 9 |         |       |                 |                        |      |        |
| 10 |        |       |                 |                        |      |        |

#### Частотный анализ

Какие требования встречаются **в ≥ 50% вакансий**:

```
- <requirement>: <X/10>
- <requirement>: <X/10>
- ...
```

Стек, упомянутый чаще всего:

```
- <Python, конкретный фреймворк, конкретные API, vector DB, observability>
```

#### Расхождения с курсом

**Что есть в курсе, но редко встречается в моих вакансиях:**

```
- ...
```

**Что часто требуется в вакансиях, но НЕ покрыто курсом:**

```
- ...
```

#### Вывод по позиционированию

После сверки с выборкой:

- Подтверждаю headline / меняю на: `...`
- Подтверждаю целевые роли / меняю на: `...`
- Подтверждаю target domain / меняю на: `...`
- Корректировка плана: какие пробелы добираю самостоятельно (не входят в курс).

> Перепроходи vacancy validation каждые 6–8 недель — рынок дрейфует.

### A.7 Сильные стороны и зоны роста — текущие — обязательно для обоих треков

Оцени себя по каждой из 10 компетенций AI Agent Engineer по шкале 0–3:

- **0** — не знаком.
- **1** — слышал / читал.
- **2** — пробовал / собрал toy-проект.
- **3** — есть production-experience.

10 компетенций:

1. **Prompt / context engineering** — спроектировать контекст так, чтобы агент стабильно решал задачу.
2. **Tool use / function calling** — подключать внешние API, БД, CRM, GitHub; обрабатывать ошибки, retries, fallback.
3. **Workflow / orchestration** — single-agent и multi-agent workflows, state machines, HITL.
4. **Надёжность на длинных циклах** — state persistence, checkpoints, guardrails, recovery after failure.
5. **Code generation pipelines** — coding agent с чтением кодовой базы, run_tests, patch review.
6. **RAG / retrieval / knowledge grounding** — индексация, retrieval, reranking, ACL, версионирование знаний.
7. **Интеграция в бизнес-процессы** — встраивание агента в support / sales / ops / internal automation.
8. **Evaluation / observability** — evals, traces, regression gates, cost/latency.
9. **Безопасность и контроль** — permission boundaries, sandboxing, prompt injection defense, audit.
10. **Инфраструктура и продакшн** — deployment, queues, caching, rate limits, model routing, SLA.

Сильные (балл 2–3):

```
- <компетенция>: <одна строка про опыт>
- <компетенция>: <одна строка про опыт>
```

Зоны роста (балл 0–1):

```
- <компетенция>: <план на ближайший модуль>
- <компетенция>: <план>
- <компетенция>: <план>
```

> В конце курса (M07 closure) перепиши этот блок — увидишь, какие компетенции выросли с 0→2 / 1→3.

---

## Часть B — Fill after M03 / M04

> Эти секции заполни **после Module 04 codebase slice** или после первой пробы RAG (Module 03). К этому моменту ты уже понимаешь, как формулировать архитектуру и какой workflow тебе ближе.

### B.1 Workflow wedge (предварительный)

Не «делать всё для support», а **один конкретный workflow** внутри домена.

Шаблон: `Делает X для Y, замеряется Z`.

```
Workflow: <название>
Что делает: <input → process → output>
Кто пользователь: <роль>
Чем заменяется ручная работа: <процесс / часы>
```

> Если ещё не уверен — пиши **черновой** wedge и помечай как `[draft]`. Финализируется в M07.

### B.2 Business metric (черновая)

Возьми business metric из M07 lesson 01 (глоссарий метрик по доменам — открой на сайте курса, когда дойдёшь до M07). На этом этапе достаточно «какую метрику буду двигать в принципе». Конкретные числа — после capstone'а.

```
Метрика: <название>
Baseline (до): <число | TBD>
Target (после): <число | TBD>
```

---

## Часть C — Fill after M07 (capstone done)

> Эти секции заполняются **в конце курса**, после capstone’а. До этого момента в них только placeholder’ы. Не выдумывай цифры заранее.

### C.1 Workflow wedge (финальный)

Финальная формулировка после capstone’а — с реальными деталями, проверенными на проекте.

```
<финальная версия>
```

### C.2 Business metric (с цифрами)

```
Метрика: <название>
Baseline: <реальное число с описанием замера>
Target / Achieved: <реальное число>
Период измерения: <дни / недели>
Eval-set: <ссылка / размер>
```

### C.3 Proof artifact

Что я предъявляю работодателю:

```
- Repo: <URL>
- Demo video: <URL>
- Write-up: <URL>
- Scorecard set: <URL / commit SHA>
```

### C.4 Метрика успеха позиционирования

Как я понимаю, что headline + wedge работают:

- Интервью-loops приходят на роли уровня X.
- Outreach response rate > Y%.
- Demo video — Z+ просмотров / shares.
- Письма от рекрутёров с упоминанием моего wedge (не «AI generic»).
