FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:1c04817a4777aa3121cdeaf749a9c007210b17ba7bd047b9229fc2824854e21f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
