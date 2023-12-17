FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:a9363edffa98019ad91055b26f6c358b03e3832b5e9b77615af25af5e47bc580
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
