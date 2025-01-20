FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:987efabcaed2fafa4a7cfde2fe4af30bb16d4181dae61b84e021b6594c4726a6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
