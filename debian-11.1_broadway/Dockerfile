FROM docker.io/pizzafactory0contorno/piatto:debian-11.1@sha256:59decc98999f39bcb82ffe12afa5ddff77ae73e09c559384d3278be0f575f64e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y libgtk-3-bin && \
    rm -fr /var/lib/apt/lists/*
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
