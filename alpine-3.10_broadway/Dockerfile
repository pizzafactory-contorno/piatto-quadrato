FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:e323ee0f0ae0636cdd92fd811c9a9ee9343bf7798e0ff535ef35659bbcab8fb3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
