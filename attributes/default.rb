# Install Attributes

default['dripstat']['home'] = '/tmp/dripstat'
default['dripstat']['agent']['version'] = '7.2.5'
default['dripstat']['owner'] = 'root'

# Mandatory Configuration

default['dripstat']['config']['licenseKey'] = 'LicenseKey'
default['dripstat']['config']['appName'] = 'MyApp'

# Optional Configuration

default['dripstat']['config']['logLevel'] = 'info'
default['dripstat']['config']['auditMode'] = 'false'
default['dripstat']['config']['traceThreshold'] = 1000
default['dripstat']['config']['stackThreshold'] = 500
default['dripstat']['config']['ignoredExceptions'] = ''
default['dripstat']['config']['ignoredHttpCodes'] = ''
