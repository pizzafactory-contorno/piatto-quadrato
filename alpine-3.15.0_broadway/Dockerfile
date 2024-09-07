FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:026a39bc497168e1964e4aafbd44acadc70d1f406738341f36a65f273eaa03fb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
