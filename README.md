# GPT

**G**eneral Ra**p**id Proto**t**yping.

## Setup

- Create virtual environment
  - `conda create --name <project_name> python=3.12`
  - `conda activate <project_name>`
- Install dependencies
  - `pip install -r requirements.txt`
- Install precommit:
  - `pre-commit install`

## Run

- Run task
  - `python -m src --task=<task_name>`

- See all options
  - `python -m src -h`

## Test

- Run test
  - `make test`

## Cleanup

- Clean pycache and run outputs
  - `make clean`

## Extend

- To add a new arg option:
  - Add a field in `src/core/arguments.py`
  - A CLI arg with the same name will be added automatically.
  - The arg value could be provided via the command line, environmental
    variables, or a `.env` file at repo root, in this order.
  - The parsed value will be in `src.arg`.

- To add a new task:
  - Create dir with `cp -r src/task/dry_run src/task/<new_task_name>`
  - Implement task in `main()` in `src/task/<new_task_name>/main.py`
  - Add an option in the `task` Literal field in `src/core/arguments.py`
  - Add a branching case in `run_task()` in `src/__main__.py`

## Contribute

- Use [black](https://github.com/psf/black) and
  [isort](https://github.com/PyCQA/isort) for Python files. This is enforced
  with precommit hooks.
- Commit messages should start with tags. E.g. `[model] add Anthropic provider`
