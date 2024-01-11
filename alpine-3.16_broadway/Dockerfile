FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:ede484a05f227337d71e0e5ebc95d34ab7cf66d6f69cd0b7aadb90bc90d2563c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
