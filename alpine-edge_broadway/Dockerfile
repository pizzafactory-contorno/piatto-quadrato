FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:f8d91d0eb4e9d2ab7e34e1f516b5112cc4a0349986c7dca5765b69ccb5ddeee0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
