FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:f2f031a0b2dfb6a3f8878ca276d171f9de3000af6a6e8db57cfad49dec9fb64e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
