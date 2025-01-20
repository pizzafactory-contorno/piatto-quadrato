FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:52865d654232ecfc77b21b99244b83b66dcf685406ac9f49fc1eb4817d97a9ac
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
