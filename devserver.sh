#!/bin/sh
# source .venv/bin/activate
uv run python -m flask --app main run -p $PORT --debug