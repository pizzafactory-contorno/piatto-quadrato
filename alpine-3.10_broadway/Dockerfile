FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:16af8699936cd2046fb92387571e2d59990c597a5e04e2a6717cb56c5c536529
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
