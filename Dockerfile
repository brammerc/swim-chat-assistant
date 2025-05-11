FROM python:3.9-slim

ARG CODEARTIFACT_URL
ARG CODEARTIFACT_TOKEN

RUN pip config set global.index-url ${CODEARTIFACT_URL}
RUN pip install --upgrade pip && pip install flask

CMD ["python3", "-m", "http.server", "8000"]