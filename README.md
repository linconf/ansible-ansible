# Ansible Role: ansible

<!---
[![Build Status](https://travis-ci.org/linconf/ansible-ansible.svg?branch=master)](https://travis-ci.org/linconf/ansible-ansible)
[![Ansible Galaxy](https://img.shields.io/badge/docs-ansible--ansible-blue.svg)](http://linconf.com/ansible-ansible/)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-linconf.ansible-660198.svg)](https://galaxy.ansible.com/linconf/ansible/)
-->

An Ansible role that manages the installation and configuration of Ansible on Debian/Ubuntu and RHEL/CentOS.

Able to install from:

- Package manager (apt, yum..)
- Package file (*.deb, *.rpm..)
- Source via GitHub clone/build

## Dependencies / Requirements

- None

If you set `ansible_role_install_from_source: True` then build dependencies
will be installed automatically. See `ansible_role_build_deps:` in vars/<your-distribution>.yml


## Testing

The master branch is continuously validated by Travis-CI.

Minor versions indicate the role passed local testing as described by the
`.kitchen` declaration. Instructions for performing test-kitchen runs locally
are detailed in the [LinConf Documentation](http://linconf.com/about/methodology/).

## Author and License

Chad Sheets - [GitHub](https://github.com/cjsheets) | [Blog](http://chadsheets.com/) | [Email](mailto:chad@linconf.com)

Released under the [MIT License](https://tldrlegal.com/license/mit-license)

[![Analytics](https://cjs-beacon.appspot.com/UA-10006093-3/github/linconf/ansible-ansible?pixel)](https://github.com/linconf/ansible-ansible)
