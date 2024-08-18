FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:ba5a697c5f148419a19730c9585da097cf2ae08fcfe5a36ea3c68f9ed9ec704d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
