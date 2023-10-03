FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:8cf1fe4e0b43c4b78c92b6bfbd5344a646f5bff6d8642336dd9e8bd71e4086c1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
