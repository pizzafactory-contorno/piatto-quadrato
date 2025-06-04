FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:bd3347092cd75af120ac3eec4274f2829ffef742ff3209259f4b93108ce903fe
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
