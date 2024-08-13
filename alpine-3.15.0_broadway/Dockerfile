FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:91c9a8861276114dc6fdefd440a239609851b9a5a3a6245432bc6889c7d0a984
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
