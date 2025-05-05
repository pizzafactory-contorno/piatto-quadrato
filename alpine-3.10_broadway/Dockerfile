FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:d30919cd1480d8f3a2b38c15a6cf3ab15025d59a40e0934e7f62eab7f977b387
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
