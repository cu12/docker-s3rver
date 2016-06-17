## s3rver

Fake S3 server for testing purposes: https://github.com/jamhall/s3rver

* built on top of `mhart/alpine-node` base image
* [![](https://badge.imagelayers.io/seayou/s3rver:latest.svg)](https://imagelayers.io/?images=seayou/s3rver:latest 'Get your own badge on imagelayers.io')
* listens on port 5000, stores data in `/tmp`
* contains awscli for easy bucket management
* uses [Tini](https://github.com/krallin/tini), a minimalistic init system to handle signaling properly

### Example usage:

```bash
$ docker run -d seayou/s3rver
```

```bash
$ docker exec <container_id> sh -c "AWS_ACCESS_KEY_ID=fake AWS_SECRET_ACCESS_KEY=fake AWS_DEFAULT_REGION=fake aws --endpoint-url http://localhost:5000 s3api create-bucket --bucket foo"
```
