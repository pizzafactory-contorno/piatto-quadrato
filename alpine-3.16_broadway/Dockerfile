FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:ddc718cd622079c11e0d8e6b2dd0e69190859f9a1f20d8a5343032c201f2d495
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
