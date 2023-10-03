FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:33cdd9de578a9f4d047947f227b7c40b7ecce3d0ea5fe19bb137752f15de6d9b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
