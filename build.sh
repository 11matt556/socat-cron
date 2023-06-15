#!/bin/sh

# What base image of Alpine to use for all builds
current_alpine_version=1.7.4.4

# Build standard cron image
docker build --build-arg alpine_socat_version=$current_alpine_version --tag 11matt556/socat-cron:$current_alpine_version .

# Push images to Dockerhub
#docker push djpic/cron:latest
#docker push djpic/cron:dev
#docker push djpic/cron:default
#docker push djpic/cron:$current_alpine_version-standard
#docker push djpic/cron:$current_alpine_version-default
#docker push djpic/cron:$current_alpine_version-dev