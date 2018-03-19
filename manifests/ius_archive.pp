#
# Class: repos::ius_archive
# Purpose: Define the IUS Archive repo for CentOS.
#
class repos::ius_archive {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-ius-archive":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - IUS Archive",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/ius/archive/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/IUS-COMMUNITY-GPG-KEY",
  }
}
