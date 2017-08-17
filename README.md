Static Site
===========

This is an example of static website running in a [docker](https://www.docker.com/) container on [vagrant](https://www.vagrantup.com/) managed by
[ansible](https://www.ansible.com/). It contains a small test suite using [bats](https://github.com/sstephenson/bats), a unit testing framework for Bash.

Running locally
---------------

To run this application you will require:

 * Virtualisation software (hyperv, virtualbox, vmware_desktop and libvirt should all work)
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
ansible-galaxy install geerlingguy.repo-epel
vagrant up
```

This will spin up the application and will be available under: [http://192.168.33.10](http://192.168.33.10)


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

Notes
-----

 * The testing of the static content hosting is over-engineered.
 * I am using the role `geerlingguy.repo-epel` to enable the EPEL repo, which is required for `python-pip`, which is required for the docker/ansible integration.

This was done as tech test.
