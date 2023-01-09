FROM ubuntu:jammy

ARG NAME
ENV NAME = {$NAME}

ARG SCRIPT_NAME
ENV SCRIPT_NAME=${SCRIPT_NAME}

RUN apt update && apt install -y \
  python3 \
  python3-pip

RUN mkdir /app

COPY /src /app

WORKDIR /app

CMD python3 ${SCRIPT_NAME:-hello_world.py}