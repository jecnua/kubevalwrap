# kubeval docker wrapper

[![Build Status](https://travis-ci.org/jecnua/kubevalwrap.svg?branch=master)](https://travis-ci.org/jecnua/kubevalwrap)

Just a docker wrapper around kubeval

- [garethr/kubeval](https://github.com/garethr/kubeval)

## To build

    make

## To use

To test:

    docker run -it --rm jecnua/kubevalwrap:dev-latest kubeval --help

To run it with a file:

    docker run -it --rm -v $PWD:/tmp jecnua/kubevalwrap:dev-latest \
      kubeval -v 1.7.0 /tmp/deploy_svc.yaml
