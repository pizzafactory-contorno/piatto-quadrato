FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:a0ce55f9e5f0fb9d792be36f088dc926bdae1c5504f72f8bcafb1b69b86d7d30
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
