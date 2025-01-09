FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:419620a0ea1163679cabf2e28ba7514da73f20a2e9872a8b5bfb107a76e47e23
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
