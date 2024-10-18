FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:e3dab874f26d5988a63a2dd289ebd354c188e8c0a07649b139227b7752e92f66
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
