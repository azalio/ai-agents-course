"""Root-level conftest: make per-project packages importable from root pytest.

Course layout: ``projects/<NN-service>/<package>/`` (e.g. ``projects/01-llm-service/llm_service/``).
Pytest is invoked from repo root and collects tests via ``testpaths = ["tests", "projects", "shared"]``.
Without help, ``from llm_service.main import app`` in
``projects/01-llm-service/tests/test_ask.py`` fails: the project dir contains a dash
(``01-llm-service``) and is not on ``sys.path``.

This conftest adds every ``projects/<dir>/`` to ``sys.path`` so tests can import the
sibling package directly. Per-project ``conftest.py`` files remain free for fixtures.

Mypy and pre-commit exclude this file via ``mypy.ini`` and ``.pre-commit-config.yaml``
patterns from M01 onwards; nothing else needs changing as new project dirs land.
"""

from __future__ import annotations

import sys
from pathlib import Path

_PROJECTS_DIR = Path(__file__).parent / "projects"

if _PROJECTS_DIR.exists():
    for _project_dir in sorted(_PROJECTS_DIR.iterdir()):
        if _project_dir.is_dir() and not _project_dir.name.startswith("."):
            _project_path = str(_project_dir.resolve())
            if _project_path not in sys.path:
                sys.path.insert(0, _project_path)
