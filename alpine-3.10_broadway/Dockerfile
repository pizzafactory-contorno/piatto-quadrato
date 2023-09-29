FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:9af1eb88f63e06e38ed151eea09b3d9cd1ec815e444a2a49b771874de7c28d47
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
