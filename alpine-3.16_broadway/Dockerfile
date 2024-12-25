FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:7c46d960f7d45bab14251d607172c103f08256b026d5dcfb378421d346f08b6d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
