#!/bin/bash

podman build -t tor-service:test -f onion/Containerfile onion/
podman build -t nginx-service:test -f nginx/Containerfile nginx/

podman pod create -n onionservice

podman run --pod onionservice nginx-service:test &
podman run --pod onionservice tor-service:test
