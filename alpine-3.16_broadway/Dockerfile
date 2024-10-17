FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:f857705569214fd6400e139564d3eae88ad5396da20f98a1fe8aeaf2ed7edff6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
