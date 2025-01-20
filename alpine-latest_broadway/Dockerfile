FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:d1416403325b7c5d1def0e0fdd00983a9dade65b94cb017d4e00e7ec0b61e2a8
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
