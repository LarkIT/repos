#
# Class: repos::remi_php70
# Purpose: Define the REMI PHP 7.0 repo for CentOS.
#
class repos::remi_php70 {
  include repos::remi_safe

  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-remi-php70":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - REMI PHP 7.0",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/centos/${::operatingsystemmajrelease}/remi/php70/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/RPM-GPG-KEY-remi",
  }
}
