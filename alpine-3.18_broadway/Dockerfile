FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:8153e3f6b04e6870c411c061938858b137bee861d4e5fbc08ac41147cf0c0983
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
