FROM docker.io/pizzafactory0contorno/piatto:debian-11.1@sha256:84d7239341344f1edfdfaa9dd518e5788067c16e5d29eb1485604935c853481f
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
