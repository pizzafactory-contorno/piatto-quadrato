FROM docker.io/pizzafactory0contorno/piatto:ubuntu-22.04@sha256:23f52897a97bd6b679b3acf4892084ee84c70ee9c9cd540520f854bd861e4542
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
