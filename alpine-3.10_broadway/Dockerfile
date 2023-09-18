FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:22a6dcaee2d76aa709064528db91cbedfd9197294917089e07433fcfec97bd6d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
