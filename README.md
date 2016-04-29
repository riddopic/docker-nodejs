
# [<img src=".bluebeluga.png" height="100" width="200" style="border-radius: 50%;" alt="@fancyremarker" />](https://github.com/riddopic/docker-nodejs) bluebeluga/nodejs

[![Circle CI](http://circle.bluebeluga.io/gh/riddopic/docker-nodejs.svg?style=svg)](http://circle.bluebeluga.io/gh/riddopic/docker-nodejs)

Alpine Linux image with Node.js.

## Installation and Usage

```
docker pull bluebeluga/nodejs
docker run bluebeluga/nodejs [options]
```

## Available Tags

* `latest`: Currently v6.0.0
* `6.0.0`:
* `5.11.0`:
* `4.4.3`:
* `0.12.13`:
* `0.10.44`:

## Tests

Tests are run as part of the `Makefile` build process. To execute them run the following command:

```
make test
```

## Deployment

To push the Docker image to the registry, run the following command:

```
make push
```
