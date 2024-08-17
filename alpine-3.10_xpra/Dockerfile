FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:9c350ecde8fef592b7e44d1226372de27d2e64892359d5fef2ab6493401268b9
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache xpra xvfb py3-paramiko py3-cairo py3-netifaces py3-xdg && \
    mkdir -p /run/user/1000/xpra && \
    for f in user xpra; \
      do mkdir -p /run/$f && chgrp -R 0 /run/$f && chmod -R g+rwX /run/$f; \
    done
COPY ./start-xpra.sh /start-xpra.sh
USER user

ENV XPRA_ADDRESS="0.0.0.0" \
    DISPLAY=":0"

CMD [ "/start-xpra.sh" ]

