FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:1dce62222acebcf3b3dc44d3b3371d03b3a5258516d2a3b4fb8a72d4d744001b
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

