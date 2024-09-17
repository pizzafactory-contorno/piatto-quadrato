FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:07a8ffb48c75c27435ca5e5901cdff5065cc6995f7df2aa9192f5401e323bd20
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

