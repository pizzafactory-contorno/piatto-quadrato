FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:c164a398637a5ee6a15ccf1068d507d50a93d2cf484bcd2ef2907bd308cb3b60
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
