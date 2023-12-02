FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:bbdbd8620ffeee2229bdae15f8887a1d0f29cb5ad438eef17a7b44136776a659
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
