FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:ae5c0f101c54afad4745c82aa227a940f6e59e6b6819a34caa9ff5c6f56ad83f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
