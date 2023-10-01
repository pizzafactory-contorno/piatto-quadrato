FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:b483d3689b00c0e41219e24115cb6b97827e3445f16f868cde972cdb9623d6b6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
