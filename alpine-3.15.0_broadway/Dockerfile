FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:457b5aee480cda32f2d853f2b3ac64310848ee551952f96fdcacc22df5aaf637
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
