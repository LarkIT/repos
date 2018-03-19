#
# Class: repos::larkit
# Purpose: Define the repo for larkit
#
class repos::larkit {
  yum::repo { 'larkit':
    descr    => 'LarkIT',
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/larkit/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/LARK-RPM-GPG-KEY",
  }
}
