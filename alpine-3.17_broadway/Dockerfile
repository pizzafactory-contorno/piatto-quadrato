FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:aa8a5cbb4208b854ac6283727fe40f4eec5a8b2f9373734026b530400fd31157
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
