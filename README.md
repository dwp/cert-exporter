# cert-exporter

This image is used within the cert_metrics task utilised in AWS ECS.  
Base image: https://github.com/joe-elliott/cert-exporter

## cert_exporter

This repo contains Makefile, and Dockerfile to fit the standard pattern.
This repo is a base to create new Docker image repos, adding the githooks submodule, making the repo ready for use.

After cloning this repo, please run:  
`make bootstrap`
