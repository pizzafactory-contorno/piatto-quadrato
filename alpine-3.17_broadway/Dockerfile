FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:ede955333d9096c676315512bd3b9cf1b6a3fbd6c7c68bb3338a09f2a2e666a4
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
