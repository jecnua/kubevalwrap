# kubeval docker wrapper

Just a docker wrapper around kubeval

- [garethr/kubeval](https://github.com/garethr/kubeval)

To run it:

    docker run -it --rm -v $PWD:/tmp docker/kubevalwrap:dev-latest -v 1.7.0 /tmp/deploy_svc.yaml
