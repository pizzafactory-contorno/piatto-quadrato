FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:afe1e1f2f4757d4c49e1eb6293af6ca6121ae4766c87e913d29f4f71a934e8cb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
