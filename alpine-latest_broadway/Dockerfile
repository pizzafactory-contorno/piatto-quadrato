FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:20c660e3bad6654feb29c8f7834e972ed961339d2c1de9283fbcffd21b14b942
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
