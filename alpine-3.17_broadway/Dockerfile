FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:7d7da2c90c81cceb9be6cd049ebc2f3986fa241e135c092887720204d28085af
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
