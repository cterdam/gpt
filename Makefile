.PHONY: test

test:
	pytest -n auto

run:
	python -m src

clean:
	rm -rf out/*
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	find . -depth -type d -name ".mypy_cache" -exec rm -r "{}" +
	find . -depth -type d -name ".pytest_cache" -exec rm -r "{}" +
