FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:f2ab7419fb352c1bd0db21ea117406631fbcc498ef399daec4e2714d2167892f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
