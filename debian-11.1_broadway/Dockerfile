FROM docker.io/pizzafactory0contorno/piatto:debian-11.1@sha256:ddd235c3ab9de9bc288a9f47c4a772720c149b63ebe3c3bce1b0c69f3040dc63
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
