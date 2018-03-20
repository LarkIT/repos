#
# Class: repos::sensu
# Purpose: Define the repo for sensu
#
class repos::sensu {

  $server_name     = lookup('profile::pulp_client::server_name', String, 'first', 'pulp.lark-it.com')
  $server_protocol = lookup('profile::pulp_client::server_protocol', String, 'first', 'http')

  yum::repo { 'sensu-official':
    descr    => 'Sensu',
    baseurl  => "$server_protocol://$server_name/pulp/repos/sensu/${::architecture}",
    gpgcheck => '0',
    enabled  => '1',
  }
}
