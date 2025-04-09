FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:fd558dd8caecae887d2b2d2695892c14bdabb70c93b9a7dbd14c4d1969941314
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
