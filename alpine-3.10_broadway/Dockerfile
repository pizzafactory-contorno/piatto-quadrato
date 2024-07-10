FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:a4d254f5ba97be14eba4f3f3448759eb7ad3c189e289b911b266072bb6290b88
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
