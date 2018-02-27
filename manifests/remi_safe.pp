#
# Class: repos::remi_php70
# Purpose: Define the REMI PHP 7.0 repo for CentOS.
#
class repos::remi_safe {
  include repos::epel

  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-remi-safe":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - REMI SAFE",
    baseurl  => "https://pulp.lark-it.com/pulp/repos/centos/${::operatingsystemmajrelease}/remi/safe/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/RPM-GPG-KEY-remi',
  }
}
