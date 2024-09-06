FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:c38dcf006da88c76099f44a53f7c38cda8ec511d16e4a2e1f243c243744a1783
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
