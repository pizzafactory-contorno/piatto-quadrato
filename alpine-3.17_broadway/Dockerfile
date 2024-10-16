FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:d62a3c932e2492625f12dc41898cb0e94633beec555d0019accdb8f1c5d62160
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
