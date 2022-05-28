FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1

# Upgrade system
RUN apt -y update && apt -y upgrade && pip install --upgrade pip

# Install python requirements
COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt

# Add flake8 config
COPY flake8 .

# ADD "lint" command
COPY lint /usr/bin/lint
RUN chmod +x /usr/bin/lint

# Create source directory
WORKDIR src
