FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:30ffd9635592e9305fc21805489f3ff18a506dbce8e074e50dd3b0c56c0a8605
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
