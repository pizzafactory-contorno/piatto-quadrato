FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:ae056b88b54ab91c4694438c4c378fb6cf7f0709b11f3118ffe4dd3b30193f4c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
