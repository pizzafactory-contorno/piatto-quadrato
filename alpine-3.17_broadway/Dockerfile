FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:8509a18a3d411600955bd8f5c937bf9cdd2f92d5cde3d4386e2df5bea5e1950e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
