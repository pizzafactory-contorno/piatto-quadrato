FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:ab20631b00170943288a98b39cf3d5c8005f30a96060c8ab3692bac4b85b9d5c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
