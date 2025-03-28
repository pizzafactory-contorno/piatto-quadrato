FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:dc9dedba728fd71c18333a83786614bdc71fc35d9787d2d1eb2762acfc1995d3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
