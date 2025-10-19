FROM debian:latest

RUN apt-get update
RUN apt-get install -y git python3 python3-pip python3-venv

RUN git clone https://github.com/pranjal-awasthi/tau2-bench.git

RUN python3 -m venv /opt/venv

WORKDIR /tau2-bench
RUN . /opt/venv/bin/activate && pip install -e .
RUN mkdir /tau2-bench/results

ENV OPENAI_API_KEY=sk-proj-dummy-key
