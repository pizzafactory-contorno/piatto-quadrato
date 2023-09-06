FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:6f1a2385dd6c5fe3b2c2f3017ec012b82502a14fa29612c8f6b7e6a292506460
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
