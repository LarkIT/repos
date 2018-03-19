#
# Class: repos::centos_sclo
# Purpose: Define the SCLo (Software Collections) repo for CentOS.
#
class repos::centos_sclo {
  yumrepo { "centos${::operatingsystemmajrelease}-${::architecture}-sclo":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - SCLo",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/centos/${::operatingsystemmajrelease}/SCLo/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-CentOS-SIG-SCLo",
  }
}
