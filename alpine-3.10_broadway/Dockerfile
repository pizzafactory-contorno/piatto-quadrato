FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:41ee4c1b1e450c9954daa1a0beadd58fc7cdfdfca7028b364fd47145364b10db
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
