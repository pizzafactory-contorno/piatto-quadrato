FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:b8d2248646f41ba6b6f13db24b5bfbaecfebd25c5063d8a523f72abb379c197b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
