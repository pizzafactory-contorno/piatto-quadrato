FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:fd04e8d8f8ba9ee1e0799e2814a057ece079203c786ae2a56fd6a3e08dd459d1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
