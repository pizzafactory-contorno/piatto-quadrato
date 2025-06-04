FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:98783da869ac78d5126b4b8d2ee536c367376d76934c9f9dfc8895d6d9af1663
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
