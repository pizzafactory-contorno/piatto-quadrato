FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:0daccc6482311132e937b518a5bfe7c0eb86341ee3bf86b6a1b4baea0bba1687
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
