FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:cd5d9a001453138d6ef84f0810a6f290eabee042a396bcc43cdee7693acbcabd
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
