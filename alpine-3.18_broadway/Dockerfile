FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:960bd66cc23fb70d42b58ba492c0d63446dffe30242a9eca729e90a10b9984c6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
