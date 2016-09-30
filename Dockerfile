FROM mhart/alpine-node:5

ENV PORT

RUN echo "http://dl-1.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "http://dl-3.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --update --no-cache add tini py-pip && \
    pip install awscli && \
    npm install -g s3rver@0.0.14
EXPOSE 5000
ENTRYPOINT ["tini", "--"]
CMD [ "s3rver", "--hostname", "0.0.0.0", "--port", "$PORT", "--directory", "/tmp" ]
