FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:8875211c5e8728b99e7472ba8b9c3d3e586e029510297f66c249aedbf358712e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
