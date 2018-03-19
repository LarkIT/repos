#
# Class: repos::centos_sclo
# Purpose: Define the SCLo (Software Collections) repo for CentOS.
#
class repos::centos_sclo_rh {
  yumrepo { "centos${::operatingsystemmajrelease}-${::architecture}-sclo-rh":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - SCLo RH",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/centos/${::operatingsystemmajrelease}/SCLo-rh/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-CentOS-SIG-SCLo",
  }
}
