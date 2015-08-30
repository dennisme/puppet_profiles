class profiles::base {
  include ::epel
  
  package { 'htop': 
    ensure  => present,
    require => Class['epel'],
  }
  
  package { 'iotop': 
    ensure => present,
    require => Class['epel'],
  }
  
  package { 'atop':
    ensure => present,
    require => Class['epel'],
  }
  
  package { 'git':
    ensure => present,
    require => Class['epel'],
  }
  
  package { 'bind-utils':
    ensure => present,
    require => Class['epel'],
  }
  
  package { 'nmap-ncat':
    ensure => present,
    require => Class['epel'],
  }

  user { 'dennisme':
     ensure     => 'present',
     home       => '/home/dennisme',
     managehome => 'true',
     password   => '$6$6xtHwBV0$jR9ikiC79tC2pXQXsjMwwnNzeDWUST4TEUbkpMQvtARCh0SwTztHSL0UFjm8h8Ekkq7/RJyRRncjJVWq9N/wZ/',
     shell      => '/bin/bash',
     groups     => 'wheel',
  }
}
