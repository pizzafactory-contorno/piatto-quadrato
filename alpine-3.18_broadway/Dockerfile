FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:22307806fd557822c551359ac7eb0f6c82ec23a9f7754bf208c04112e23fabaf
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
