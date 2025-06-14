FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:03c6597276bcd4159697bfe669565551a228f9f9a48269b8454512ea0232e133
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
