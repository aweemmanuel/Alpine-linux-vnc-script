FROM alpine:3.22

RUN apk update && apk add --no-cache \
    bash \
    xvfb \
    x11vnc \
    openbox \
    firefox-esr \
    ttf-dejavu \
    python3 \
    py3-pip

RUN pip3 install --break-system-packages websockify

ENV DISPLAY=:99

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 6080

CMD ["/start.sh"]
