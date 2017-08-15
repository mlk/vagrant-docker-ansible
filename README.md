Static Site
===========

This is an example of static website running in a [docker](https://www.docker.com/) container on [vagrant](https://www.vagrantup.com/) managed by
ansible. It contains a small test suite using [bats](https://github.com/sstephenson/bats), a unit testing framework for Bash.

Tests
-----

To execute the tests you require:

 * ansible
 * bats
 * vagrant

On the command line run:

```
bats tests.bat
```

This was done as tech test.
