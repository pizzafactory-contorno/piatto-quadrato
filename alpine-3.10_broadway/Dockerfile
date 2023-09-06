FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:2d85c5cefd8f77a9b61a7f630e01b9e89cc4d72df267089501cd30485d59ce0e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
