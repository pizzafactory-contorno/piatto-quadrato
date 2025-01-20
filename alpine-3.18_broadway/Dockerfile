FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:c725383d32ad2a9207a0aa9bbb9d028460d0c01a9550b5d30122d3bdebdab54e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
