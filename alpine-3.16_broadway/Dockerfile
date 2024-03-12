FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:0f81a47557c9be757050a92c22377fdc2c1ce4a0d82d2d83d48aa4fbd7ebdbbe
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
