FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:77e0fd3c974df7eac560d1b7d9bfbf3fcce7d56a3b2425f290162699c8a2ffe7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
