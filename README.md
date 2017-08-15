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

On the command line run:

```
bats tests.bat
```

Potential improvements:

 * The testing framework creates and tears down the environment with each test. This is quite expensive.
 * Currently the application and the infrastructure are in a single repo/build system. This should be separated.

This was done as tech test.
