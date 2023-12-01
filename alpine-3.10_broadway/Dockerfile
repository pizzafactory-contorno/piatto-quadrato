FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:825c5b5f20e656a2921fc3a86f2f9e8d48d474378d64193a48d3b946ecf48f76
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
