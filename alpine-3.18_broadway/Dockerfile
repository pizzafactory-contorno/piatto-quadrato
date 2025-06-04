FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:32e970355e75b00db65edd4e444c3597b61c4430b676c6a154df0c3c8f6c33bc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
