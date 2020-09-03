#!/bin/bash

# Build nginx static website container
docker build --no-cache -t ybrin/ballet-website:latest .

# Push to registry
docker push ybrin/ballet-website:latest
