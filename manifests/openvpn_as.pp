#
# Class: repos::openvpn_as
# Purpose: Define the repo for openvpn_as
#
class repos::openvpn_as {

  $server_name     = lookup('profile::pulp_client::server_name', String, 'first', 'pulp.lark-it.com')
  $server_protocol = lookup('profile::pulp_client::server_protocol', String, 'first', 'http')

  yumrepo { 'openvpn-as':
    descr    => 'OpenVPN Access Server',
    baseurl  => "$server_protocol://$server_name/pulp/repos/openvpn/el${::operatingsystemmajrelease}/${::architecture}/",
    gpgcheck => '0',
    enabled  => '1',
  }
}
