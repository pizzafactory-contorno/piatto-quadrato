FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:62be228c160331edfe02df27f79d0e90ceca6b5989cf6e5a84d9bcbb0e5841d0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
