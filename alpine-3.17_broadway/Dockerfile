FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:d4ffb01238dc3997bee052f10b803db5de7ba183706caacbdacd890dc982d933
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
