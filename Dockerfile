FROM jrottenberg/ffmpeg:alpine
#MAINTAINER kev <noreply@easypi.pro>

RUN set -xe \
    && apk add --no-cache ca-certificates \
                          openssl \
                          python3 \
    && pip3 install youtube-dl

WORKDIR /data

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
