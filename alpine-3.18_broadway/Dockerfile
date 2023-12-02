FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:099e7913757e6862dc9f6f3f799616db0434d6a6eb0023f90f97e949db80d0cc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
