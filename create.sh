#!/bin/bash
docker build -t local_proxy .
docker run --name local_proxy -p 8080:8080 -d local_proxy
