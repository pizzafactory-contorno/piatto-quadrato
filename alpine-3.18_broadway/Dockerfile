FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:3a90d37e9f4448876b7ccfc1eb04b98f578d11f0b1047d88c6f64de34562e116
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
