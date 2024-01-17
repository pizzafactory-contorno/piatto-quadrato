FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:7759b1cf4a2c0340e273086c02bd1a4c9a82419c63696a148061deebec42176d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
