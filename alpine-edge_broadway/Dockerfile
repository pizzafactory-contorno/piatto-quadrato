FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:e35ef1b648f7b88443caef1846b9beec4982f69bad4bbfaf0f5b12cd63a68a98
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
