FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:08dacc0c2c721751fa6b6ddf01d7cad4556c23eadfef68d0f9a5e944b3f0f869
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
