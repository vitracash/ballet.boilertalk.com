#!/bin/bash

# Move tmp files up
cp docker/Dockerfile ./
cp docker/nginx-default.conf ./

# Build nginx static website container
docker build -t ballet-website .

# Remove tmp Dockerfile
rm Dockerfile
rm nginx-default.conf

# Push to Google Cloud registry
docker tag ballet-website us.gcr.io/boilertalk-main/ballet-website
gcloud docker -- push us.gcr.io/boilertalk-main/boilertalk-website
