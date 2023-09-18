FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:a2cad765b0ad4ceb6efa00115135708fbba7320f3c50038954894cf7484cc3da
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
