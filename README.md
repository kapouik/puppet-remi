# puppet-remi

[![Build Status](https://img.shields.io/travis/kapouik/puppet-remi/master.svg?style=flat-square)](https://travis-ci.org/kapouik/puppet-remi)
[![Puppet Forge](https://img.shields.io/puppetforge/v/kapouik/remi.svg?style=flat-square)](https://forge.puppet.com/kapouik/remi)

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with remi](#setup)
    * [Beginning with remi](#beginning-with-remi)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module configure [Remi's RPM repository](http://rpms.famillecollet.com/) and import the RPM GPG key file.

It is a fork of [hfm module](https://github.com/hfm/puppet-remi) that do not look like to be update anymore.

## Setup

### Beginning with remi

To configure the remi with default parameters, declare the `remi` class.

```puppet
include remi
```

## Usage

### Configuring remi

```puppet
class { 'remi':
  remi_safe_enabled  => 1,
  remi_php74_enabled => 1,
}
```

### Configuring modules from Hiera

```yaml
---
remi::remi_safe_enabled: 1
remi::remi_php74_enabled: 1
```

## Reference

### Classes

#### Public Classes

- `remi`:  Configure the remi repository and import the GPG keys.

#### Private Classes

- `remi::rpm_gpg_key`: Import the RPM GPG key for the Remi.

### Parameters

#### remi

- `ensure`: Whether the RPM-GPG-KEY-remi file should exist. Default to present.
- `path`: The path to the RPM-GPG-KEY-remi file to manage. Must be an absolute path. Default to '/etc/pki/rpm-gpg/RPM-GPG-KEY-remi'.

## Development

### Running tests

The STNS puppet module contains tests for both [rspec-puppet](http://rspec-puppet.com/) (unit tests) and [beaker-rspec](https://github.com/puppetlabs/beaker-rspec) (acceptance tests) to verify functionality. For detailed information on using these tools, please see their respective documentation.

#### Testing quickstart

- Unit tests:

```console
$ bundle install
$ bundle exec rake lint
$ bundle exec rake validate
$ bundle exec rake spec
```

- Acceptance tests:

```console
# Set your DOCKER_HOST variable
$ eval "$(docker-machine env default)"

# Run beaker acceptance tests
$ BEAKER_set=centos7 bundle exec rake beaker
```
