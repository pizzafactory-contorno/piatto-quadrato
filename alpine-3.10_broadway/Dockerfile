FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:ee685a785a8bf68d126d60efb54e15a9e08f32b2fe5201615a1b5e7eb9a52955
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
