FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:0a9ec52e496a2b603c5b3ef35ee8647877aa0a70834eb46bf3c0351b900d1f60
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
