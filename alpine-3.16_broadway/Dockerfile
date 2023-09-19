FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:58e0f703039285792715dec21df7e47e3dec9e4bfbab050855e556195e846638
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
