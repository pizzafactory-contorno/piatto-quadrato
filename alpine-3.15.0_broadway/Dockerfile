FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:92d4b2d13dc05c02e9df93ab48b69202ce7618597c6e2e1534d985dd6a53df19
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
