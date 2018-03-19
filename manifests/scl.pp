#
# Class: repos::scl
# Purpose: Define the SCL (Software Collections) repo for CentOS.
#
class repos::scl {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-scl":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - SCL",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/centos/${::operatingsystemmajrelease}/scl/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-CentOS-Testing-${::operatingsystemmajrelease}",
  }
}
