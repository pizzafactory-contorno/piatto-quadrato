FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:43bcc7f0d9a51dbfe83bb336c85e44ef1d5d67fac5fce49e2c1c6cb9e0543ab7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
