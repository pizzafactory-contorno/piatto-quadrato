FROM docker.io/pizzafactory0contorno/piatto:ubuntu-20.04@sha256:3976f8000af4051b5b883a7227850b0a74632df8ac2cb2ba663ce15f42e0899e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release && \
    update-ca-certificates --fresh && \
    curl https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/focal/xpra.sources > /etc/apt/sources.list.d/xpra.sources && \
    curl -fsSL https://xpra.org/xpra.asc -o /usr/share/keyrings/xpra.asc && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y websockify xpra xpra-html5 xvfb && \
    apt-get autoremove -y curl && \
    apt-get clean && rm -fr /var/lib/apt/lists/*
COPY ./start-xpra.sh /start-xpra.sh
USER user

ENV XPRA_ADDRESS="0.0.0.0" \
    DISPLAY=":0"

CMD [ "/start-xpra.sh" ]
