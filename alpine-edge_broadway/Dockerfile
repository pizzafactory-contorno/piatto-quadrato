FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:b338c286fbd1bee6d733556f6589515ed4da495aeb4e8d100c7aafbd16915da4
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
