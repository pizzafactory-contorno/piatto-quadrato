FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:8fe00750320b81fdd220222dd119c46635a23cbc00c9792ffa01b949b7625d1c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
