FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:c0724ca148efc780d2a187d3b6f71465bef27b21595fe352d8e40e33113f64ab
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
