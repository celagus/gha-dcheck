FROM python:alpine

RUN apk add openjdk11
RUN pip install dependency-check

WORKDIR /

COPY entrypoint.sh .

ENTRYPOINT ["sh", "/entrypoint.sh"]
