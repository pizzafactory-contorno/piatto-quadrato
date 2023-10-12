FROM docker.io/pizzafactory0contorno/piatto:debian-10.1@sha256:e747f7d314755f99f32aff7acfa021ab6120615570143a44b11832aa8f04ae96
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release && \
    update-ca-certificates --fresh && \
    curl https://xpra.org/repos/$(lsb_release -cs)/xpra.sources > /etc/apt/sources.list.d/xpra.sources && \
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
