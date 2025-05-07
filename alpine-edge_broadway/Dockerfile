FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:f05494ee728c313de0b83e9081dffd245a924e09c8b47aba4ba9d4edbe1c7c6b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
