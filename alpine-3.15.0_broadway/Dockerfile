FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:4e3b3b1481a33803696d22dedad923df68b3a1cf8f6092e4e09f47646ab076f0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
