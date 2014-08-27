# Dell

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Overview

This module installs Dell OpenManage on Linux servers

## Module Description

This module installs Dell OpenManage on Linux servers. It basically automates the
manual instructions provided by Dell.

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

This module takes no parameters. Currently it does not self-limit so be sure to
check that you are installing it only on Dell systems, e.g. using the following
syntax in your manifest.

```
 if $manufacturer == 'Dell Inc.' {
    include dell
  }
```

This module also provides an optional class which provides Nagios checks that
interrogate Dell OpenManage. Some of these parameters are hard-coded and may not
work in your environment. This section needs improvement - if you are having trouble
using these Nagios checks then please open an issue and I'll bump it up my
priorities.

```
 if $manufacturer == 'Dell Inc.' {
    include dell::openmanage::nagios
  }
```

## Limitations

This module supports both Red Hat-compatible distros and Debian-compatible
distros.

## Development

This module is forked from `camptocamp/puppet-dell` for the purposes of improvement
and publication on Puppet Forge. Feel free to send pull requests etc.
