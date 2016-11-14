## s3rver

[![](https://images.microbadger.com/badges/image/seayou/s3rver:v1.0.2.svg)](https://microbadger.com/images/seayou/s3rver:v1.0.2 "Get your own image badge on microbadger.com")

Fake S3 server for testing purposes: https://github.com/jamhall/s3rver

* built on top of `mhart/alpine-node` base image
* listens on port 5000 by default, stores data in ` /tmp `
* contains awscli for easy bucket management
* uses [Tini](https://github.com/krallin/tini), a minimalistic init system to handle signaling properly
* To control the port to listen on change the ` PORT ` environment variable.
```bash

$ docker run -e PORT=4569 -d seayou/s3rver

```


### Example usage:

```bash

$ docker run -d seayou/s3rver

```

```bash

$ docker exec <container_id> sh -c "AWS_ACCESS_KEY_ID=fake AWS_SECRET_ACCESS_KEY=fake AWS_DEFAULT_REGION=fake aws --endpoint-url http://localhost:5000 s3api create-bucket --bucket foo"

```
