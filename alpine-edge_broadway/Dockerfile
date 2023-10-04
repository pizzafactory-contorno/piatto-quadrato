FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:6fd1c00488dd6c5ac5023631c9c4627d1b9495fde11672dd813694707ee28474
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
