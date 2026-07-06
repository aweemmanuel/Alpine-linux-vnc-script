FROM alpine:latest

ENV DISPLAY=:99
ENV NOVNC_PORT=6080

RUN apk update && apk add --no-cache \
    firefox-esr \
    xvfb \
    x11vnc \
    openbox \
    novnc \
    websockify \
    bash \
    dbus \
    ttf-dejavu

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 6080

CMD ["/start.sh"]
