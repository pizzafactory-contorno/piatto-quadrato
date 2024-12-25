FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:2edbbf868ca33b93b0678d8589e267efa263b92c8ace3fc86a13f3f1a19c3c16
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
