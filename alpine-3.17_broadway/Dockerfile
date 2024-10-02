FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:ae7e8cba47695e7046de68b1f40dcdcf5e87023ff9f86114e1be6948987d939b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
