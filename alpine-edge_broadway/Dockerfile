FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:4f2c30cacc5e44aa1d85bff36aa6f6fa404e21753dbc20da47736d236f5f4b93
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
