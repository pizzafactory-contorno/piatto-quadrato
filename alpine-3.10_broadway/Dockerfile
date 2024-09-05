FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:0bafa0054da520ef2cd74e33e7a68a892bce5cc3e8ceba01bcf6ac5a461c6e1f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
