FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:fc196036deb64c710b0ebd10bdf1ae977334749f6383ea85100527a08fd83024
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
