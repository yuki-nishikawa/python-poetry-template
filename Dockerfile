FROM python:3.9-slim AS builder
LABEL version="0.1"
LABEL description="test_server"

ENV POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_CREATE=false \
    \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    \
    PYSETUP_PATH="/opt/pysetup"

ENV PATH="$POETRY_HOME/bin:$PATH"

RUN apt-get update && \
    apt-get install --no-install-recommends -y curl && \
    apt-get clean

RUN curl -sSL https://install.python-poetry.org/ | python -

# packages install
RUN mkdir /work
COPY ./pyproject.toml /work/pyproject.toml
WORKDIR /work
RUN poetry install --only main
COPY ./main.py /work/main.py

CMD ["poetry", "run", "python", "main.py"]