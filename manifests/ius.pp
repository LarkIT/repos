#
# Class: repos::ius
# Purpose: Define the IUS repo for CentOS.
#
class repos::ius {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-ius":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - IUS",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/ius/stable/CentOS/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/IUS-COMMUNITY-GPG-KEY",
  }
}
