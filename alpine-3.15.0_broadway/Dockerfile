FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:bbded2a4e5bb0650b175e410b04f715f11a851b0f2ca2e1451b6150d278fe865
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
