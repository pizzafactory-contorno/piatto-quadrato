FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:86b99c320ae0b88e0b7f62d6c3cde94d13500c329a3a54209373bd4613d0f675
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
