FROM mhart/alpine-node:latest

ENV PORT 5000

RUN apk --update --no-cache add tini py-pip && \
    pip install awscli && \
    npm install -g s3rver@0.0.14
EXPOSE 5000
ENTRYPOINT ["tini", "--"]
CMD s3rver --hostname 0.0.0.0 --port ${PORT} --directory /tmp
