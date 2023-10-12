FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:8f5041978a9bc840ac68da1926dfeea17e4b5748502ab20e94eba19ca4d31f5f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
