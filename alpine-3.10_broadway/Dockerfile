FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:55186f8b2e584fab6a0a330473acd93b3e06bb03c647037de00d3da727ebd15c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
