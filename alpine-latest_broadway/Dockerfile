FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:46fb00166ecba91e22c1c99587a7734ccb1e9367a3e4441f9fa2e3d716963117
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
