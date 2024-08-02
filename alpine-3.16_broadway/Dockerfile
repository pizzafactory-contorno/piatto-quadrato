FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:aab8a1b41e85ee1bc14e625c1445b7f4f2d2a32cde041dff5f58a647310a57aa
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
