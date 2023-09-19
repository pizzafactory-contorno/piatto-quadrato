FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:8781102f977cd81ef6880ab46088d1cb82d13855877ee346254321aeb14ff17f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
