FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:25522f5de1bb0a9a3b3628d2c18ef1a27127bd3793cb02f554d184e51601e349
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
