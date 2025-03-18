FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:aee393da81ebd415b57d92da8468de618f68d1c11c416da35a51bd2bad983ed0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
