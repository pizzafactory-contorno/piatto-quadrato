FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:5a763b0d30edf2ab5c8de64f44b2440564559ec6ea3b9db7fe88c2e11b7a8ae1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
