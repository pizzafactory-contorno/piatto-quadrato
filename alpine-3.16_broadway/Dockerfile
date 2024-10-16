FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:8988fc602b4186a83f6989ca826f74f473d17566a32e7f039037dcd0d5334c3e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
