FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:fc63813afdfe46d0e685650b0846cce2ca4a746470cde5d06d3b658ba315326f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
