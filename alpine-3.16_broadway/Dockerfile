FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:bd2315f8b27b7d84674b5a70a5845c457e17919339a36ad9b4744a63e4c377da
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
