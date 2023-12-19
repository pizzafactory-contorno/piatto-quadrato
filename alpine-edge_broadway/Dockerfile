FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:f423ac29c30d395c5469c8586f2f6aa4551e5d085759c5ad095788eb2b470a89
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
