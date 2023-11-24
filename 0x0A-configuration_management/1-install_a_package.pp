# install_flask.pp

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Uninstall Flask
exec { 'uninstall_flask':
  command => '/usr/bin/pip3 uninstall -y Flask',
  require => Package['python3-pip'],
}

# Install Flask version 2.1.0 using pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['uninstall_flask'],
}
