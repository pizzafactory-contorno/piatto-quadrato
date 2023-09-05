FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:75df75ce0950b9b7421fa0060496d9b61d0687a6509109798ad883832b0084f8
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
