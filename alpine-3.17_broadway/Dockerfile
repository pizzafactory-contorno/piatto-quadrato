FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:6508f2b3b98dcf3ef5e8015fb5547655b056608b143cdf464d451a55a6c0576f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
