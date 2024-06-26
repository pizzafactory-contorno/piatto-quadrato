FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:4f9276601053a6c249b2028236a4ec8a74b1bf86cfff855d65a84bb2b66a993c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
