FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:452ef0be00337edab9e1676d0f3a3895fd4aede9d34de7157e2adc384c5df9da
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
