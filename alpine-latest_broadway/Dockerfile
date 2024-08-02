FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:6fc6b9f089d64d7bae8b671980f6cd573a9e25e63d4966a638be20d1d5201672
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
