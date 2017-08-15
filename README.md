Static Site
===========

This is an example of static website running in a [docker](https://www.docker.com/) container on [vagrant](https://www.vagrantup.com/) managed by
[ansible](https://www.ansible.com/). It contains a small test suite using [bats](https://github.com/sstephenson/bats), a unit testing framework for Bash.

Running locally
---------------

To run this application you will require:

 * Virtual Box
 * Ansible
 * Vagrant

 On MacOS this can be done via the following commands:

 ```
 brew install ansible
 brew cask install virtualbox
 brew cask install vagrant
 ```

With the three required components installed the application can be started by executing the following command:

```
vagrant up
```

This will spin up the application and will be available under: [http://192.168.33.10:8080](http://192.168.33.10:8080)


To shut the application down use:

```
vagrant halt
```


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

Potential improvements
---------------------

 * Currently the application and the infrastructure are in a single repo/build system. This should be separated.
 * The testing framework creates and tears down the environment with each test. This is quite expensive.
 * Redeploying the application needs to redeploy the environment.
 * No hardening of the host has been done. For example SSH is enabled.
 * Move away from the [ubuntu/trusty64](https://app.vagrantup.com/ubuntu/boxes/trusty64) as it only exists for Virtual Box.

Notes
-----

 * The testing of the static content hosting is over-engineered.
 * I'm using Ubuntu due to an awful internet at home and I already have a Vagrant box locally for Ubuntu.

This was done as tech test.
