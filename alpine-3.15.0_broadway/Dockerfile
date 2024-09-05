FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:64c85581cd89db5dcc409cb1e92c8e68676f89ceb2489432db6b115e091f98ec
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
