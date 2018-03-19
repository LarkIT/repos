#
# Class: repos::epel
# Purpose: Define the EPEL repo for CentOS.
#
class repos::epel {
  yumrepo { "centos-${::operatingsystemmajrelease}-${::architecture}-epel":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - EPEL",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/epel/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
  }
}
