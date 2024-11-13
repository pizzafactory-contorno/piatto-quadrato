FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:9e1d5e2e9bc9dbeeea45a8ad68d421aba5dea6d5c367f2ca0b99c745d3e2d572
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
