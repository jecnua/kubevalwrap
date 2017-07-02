# kubeval docker wrapper

[![Build Status](https://travis-ci.org/jecnua/kubevalwrap.svg?branch=master)](https://travis-ci.org/jecnua/kubevalwrap)
![status](https://img.shields.io/badge/project_status-active-green.svg)

Just a docker wrapper around [garethr/kubeval](https://github.com/garethr/kubeval).

## Build and use locally

Build:

    make

Test:

    docker run -it --rm \
      jecnua/kubevalwrap:dev-latest \
      kubeval --help

To run it with on file (example):

    docker run -it --rm -v $PWD:/tmp \
      jecnua/kubevalwrap:dev-latest \
      kubeval -v 1.7.0 /tmp/deploy_svc.yaml

# Notes

- Tested on travis with [dgoss](https://github.com/aelsabbahy/goss/tree/master/extras/dgoss)
- MIT license
