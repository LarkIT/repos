#
# Class: repos::sensu
# Purpose: Define the repo for sensu
#
class repos::sensu {
  yum::repo { 'sensu-official':
    descr    => 'Sensu',
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/sensu/${::architecture}",
    gpgcheck => '0',
    enabled  => '1',
  }
}
