FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:178489f3cabdf59caf78b7cb1a0ed8ed40c98688dc25a5dd75ce52c41586d5da
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
