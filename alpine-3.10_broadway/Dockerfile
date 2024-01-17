FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:eae2ab1094c84e0f8742f4589c7603d0645b86a60fed86a0eebfa4294f6a43eb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
