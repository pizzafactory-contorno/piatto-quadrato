FROM docker.io/pizzafactory0contorno/piatto:debian-11.1@sha256:817ba5d26b56924099bad0956193d0cd7bfac0bc9c4a7793707b1a5411dd3ec8
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release && \
    update-ca-certificates --fresh && \
    curl https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bullseye/xpra.sources > /etc/apt/sources.list.d/xpra.sources && \
    curl -fsSL https://xpra.org/xpra.asc -o /usr/share/keyrings/xpra.asc && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y websockify xpra xpra-html5 xvfb && \
    apt-get autoremove -y curl gnupg && \
    apt-get clean && rm -fr /var/lib/apt/lists/*
COPY ./start-xpra.sh /start-xpra.sh
USER user

ENV XPRA_ADDRESS="0.0.0.0" \
    DISPLAY=":0"

CMD [ "/start-xpra.sh" ]
