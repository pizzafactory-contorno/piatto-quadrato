FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:091b22fa6a5f2d112f509ed778be09ec8d9cedd1e2ea7dbe75852488bbe8cfee
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
