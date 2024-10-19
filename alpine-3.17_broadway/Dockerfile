FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:4e5d4d1f976ed8dd39f23c2890e61a17bb9592f0660814fe77e98e7ff16571a2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
