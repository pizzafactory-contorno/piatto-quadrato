FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:dfc9df8ccb0b04e2fae221777bd5b9456bb232705aa26b69892fe25d029e3713
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
