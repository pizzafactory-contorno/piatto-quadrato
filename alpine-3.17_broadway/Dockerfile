FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:0e82d5a810199121e666faabf47073e1cc180a46cef161b796303d0c8d38aba3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
