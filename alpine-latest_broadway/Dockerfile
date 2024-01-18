FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:4b50b4fd36277c1c65abd2e0127058a961e101dfc783647e4019e0df807ff3ad
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
