FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:6633f08ff758dc286e848ab4474ca22bd901a6b434e79caab2a90f331d5f8cde
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
