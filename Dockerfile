FROM jfloff/alpine-python:2.7-slim

WORKDIR /usr/local/bin

RUN pip install prometheus_client

ENV LISTENPORT 8110
ENV HS110IP 192.168.1.53
ENV FREQUENCY 1

ADD hs110-exporter.py .
ADD entrypoint.sh .
RUN chmod +x entrypoint.sh

EXPOSE 8110

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

