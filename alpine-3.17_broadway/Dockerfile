FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:a8c4f5b63cf724120236a202c1c1f6e9ec3c68906f28763f1b98bf2afafc3e69
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
