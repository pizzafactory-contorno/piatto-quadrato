FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:a0aea058210f8e51b396b3321141b118eee55b6d5ce9658ed27fce8841726de5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
