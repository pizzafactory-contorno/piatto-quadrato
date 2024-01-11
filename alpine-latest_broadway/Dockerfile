FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:cc256430734400d1f88fc39ad4425aa7aa62af806d15f0e46ce2a9ea15010b18
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
