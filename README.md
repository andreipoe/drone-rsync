# drone-rsync
[![drone-rsync on Docker Hub](https://img.shields.io/docker/automated/andreipoe/drone-rsync.svg)](https://hub.docker.com/r/andreipoe/drone-rsync/)

This is a pure Bash [Drone](https://github.com/drone/drone) >= 0.5 plugin to sync files to remote hosts.

## Docs

- [For Drone CI versions < 1](https://github.com/andreipoe/drone-rsync/blob/master/0-DOCS.md)
- [For Drone CI versions >= 1](https://github.com/Drillster/drone-rsync/blob/master/1-DOCS.md)

## Build

To build the Docker image from source:

```bash
docker build -t andreipoe/drone-rsync .
```

## CLI Usage

This is intended to be used a Drone plugin, but you can run the image from the working directory:

```bash
docker run --rm \
  -e PLUGIN_KEY=$(cat some-private-key) \
  -e PLUGIN_HOSTS="127.0.0.1, 127.0.0.2, 127.0.0.3" \
  -e PLUGIN_PORTS="22, 23, 24" \
  -e PLUGIN_TARGET="./" \
  -e PLUGIN_PRESCRIPT="echo \"Prescript Done!\"" \
  -e PLUGIN_SCRIPT="echo \"Postscript Done!\"" \
  -e PLUGIN_ARGS="--blocking-io" \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  andreipoe/drone-rsync
```
