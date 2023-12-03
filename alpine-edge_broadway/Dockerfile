FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:32a7efb5acd5d8c21b146af2a3f8eb90888d012fb6691a801412a0ec8cbb215a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
