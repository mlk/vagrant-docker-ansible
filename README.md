Static Site
===========

This is an example of static website running in a [docker](https://www.docker.com/) container on [vagrant](https://www.vagrantup.com/) managed by
[ansible](https://www.ansible.com/). It contains a small test suite using [bats](https://github.com/sstephenson/bats), a unit testing framework for Bash.

Tests
-----

To execute the tests you require:

 * ansible
 * bats
 * vagrant
 * Curl
 * Docker

On the command line run:

```
bats *.bat
```

Potential improvements:

 * The testing framework creates and tears down the environment with each test. This is quite expensive.
 * Currently the application and the infrastructure are in a single repo/build system. This should be separated.
 * Redeploying the application needs to redeploy the environment.
 * No hardening of the host has been done. For example SSH is enabled.

Notes:
 * The testing of the static content hosting is over-engineered.
 * I'm using Ubuntu due to awful internet at home and I already have a Vagrant box locally for Ubuntu.

This was done as tech test.
