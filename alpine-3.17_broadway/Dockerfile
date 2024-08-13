FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:03a9e76617da797b437333fc88a6de3c26163508bfc5731ef841fde077c3ed9e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
