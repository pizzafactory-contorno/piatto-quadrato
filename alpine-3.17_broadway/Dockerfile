FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:d367d2567076807176395dad2bbb843de3a0294b7ab38887e2934d83e2272b7f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
