FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:0e16787b07b99ede06b348cbbc9d104057c911275d9744e3c3138e25043c8f7e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
