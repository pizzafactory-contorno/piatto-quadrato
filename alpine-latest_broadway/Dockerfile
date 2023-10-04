FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:ff6485456a91e982f57a618938e2066a2ed111608cbd97b6b866a822ac1c37ef
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
