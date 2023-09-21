FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:3190146f015bc68b49112288436e8fcf3c4af105d3e8c2119e925524d16e3ddb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
