FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:f0ab3092966901a68d17f08d2e8dada2dcb07b7dfea12c6bc42b2bb608bb9266
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
