FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:07a8ffb48c75c27435ca5e5901cdff5065cc6995f7df2aa9192f5401e323bd20
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
