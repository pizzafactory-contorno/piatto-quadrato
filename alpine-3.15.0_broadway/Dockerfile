FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:dc5e5494ad135cc535bfcafda980a4e09d92a1f147787beb0d15a9cb3275073a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
