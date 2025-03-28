FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:b6d4f65c9f550f43b0e9952c1756803da2e80f6dbe9741042522b0bbfdfcfe56
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
