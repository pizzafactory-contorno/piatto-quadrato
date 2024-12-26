FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:af2bf54f9825b86bd8f2e34f3762662dcc8f75cdbe28eb23fde2c32383c23433
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

