shurco/nginx-push-stream-module
======================

[![Docker Stars](https://img.shields.io/docker/stars/shurco/nginx-push-stream-module.svg)](https://hub.docker.com/r/shurco/nginx-push-stream-module/)
[![Docker Pulls](https://img.shields.io/docker/pulls/shurco/nginx-push-stream-module.svg)](https://hub.docker.com/r/shurco/nginx-push-stream-module/)
[![Docker Build](https://img.shields.io/docker/automated/shurco/nginx-push-stream-module.svg)](https://hub.docker.com/r/shurco/nginx-push-stream-module/)
[![Docker Size](https://img.shields.io/docker/image-size/shurco/nginx-push-stream-module/latest)](https://hub.docker.com/r/shurco/nginx-push-stream-module/)
[![Publish Docker image](https://github.com/shurco/nginx-push-stream-module/actions/workflows/docker-image.yml/badge.svg)](https://github.com/shurco/nginx-push-stream-module/actions/workflows/docker-image.yml)

Lightweight  Docker image using Alpine for an Nginx using Nginx Push Stream Module https://github.com/wandenberg/nginx-push-stream-module

## Usage

    docker run -d -p 80:80 -v ~/mycode:/var/www/html shurco/nginx-push-stream-module

## Versions used:

- Alpine version: 3.16.2
- Nginx version: 1.22.0
- Nginx Push Stream Moduleversion: 0.5.4
