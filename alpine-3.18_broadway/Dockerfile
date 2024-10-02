FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:9e61c0068f67edf46c3126e6baedb5586b62a0dc70a86fd819cb66b2d3fe8bc1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
