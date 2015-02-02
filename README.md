dripstat Cookbook
=======================
Installs and configure dripstat agent.

# Configuration

```
# Install Attributes

default['dripstat']['home'] = "/tmp/dripstat"
default['dripstat']['agent']['version'] = "5.1.7"
default['dripstat']['owner'] = "root"

# Mandatory Configuration

default['dripstat']['config']['licenseKey'] = "LicenseKey"
default['dripstat']['config']['appName'] = "MyApp"

# Optional Configuration

default['dripstat']['config']['logLevel'] = "info"
default['dripstat']['config']['auditMode'] = "false"
default['dripstat']['config']['traceThreshold'] = 1000
default['dripstat']['config']['stackThreshold'] = 500
default['dripstat']['config']['ignoredExceptions'] = ""
```

# Installation

In order to install the agent, add on your machine configuration recipe:

`include_recipe 'dripstat::agent'`

## Jetty Configuration

In order to setup jetty to automatically load the agent, include the following recipe:

`include_recipe 'dripstat::jetty_confing'`

Note that you must install jetty using the jetty community cookbook in order for this to work, otherwise you must manually include the agent in the java_opts of your custom installed jetty.
