FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:a9549c55ddddd605c178573139f4f711cbee50bdae8f98dd2be64155e9b9cfe6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
