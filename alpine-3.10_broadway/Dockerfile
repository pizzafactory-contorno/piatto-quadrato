FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:c994e3c2d5726c86e33012b828cedcb2d715d32245aa10062b6cfdb673b76ff4
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
