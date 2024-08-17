FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:3bf0470ba785744dd1cf970122ab9318b18090619fc88563f4452fb1f16f99f2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
