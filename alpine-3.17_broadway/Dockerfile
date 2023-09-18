FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:0df52579f82b069e5c8c1a4140bc11a718a713ca40da296c80cf913d06316057
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
