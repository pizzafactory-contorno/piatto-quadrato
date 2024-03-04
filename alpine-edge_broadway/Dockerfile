FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:47da3d4cb5fa85226e2d46b16e44167bcb0a94b41a99a93943f0e6754d2b2eaa
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
