FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:98b4280621be49fcd8979e76eb0237f627a90af392d4f64bad4e06a341581e7f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
