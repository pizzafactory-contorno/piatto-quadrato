FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:3663c488e31db203c291b196583901b00e2142e293ea2f0dab072446f7f943cd
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
