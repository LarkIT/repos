#
# Class: repos::openvpn_as
# Purpose: Define the repo for openvpn_as
#
class repos::openvpn_as (
  $pulp_server_protocol = 'https',
  $pulp_server = 'lark-pulp-01.do.lark-it.com',
) {
  yumrepo { 'openvpn-as':
    descr    => 'OpenVPN Access Server',
    baseurl  => "${pulp_server_protocol}://${pulp_server}/pulp/repos/openvpn/el${::operatingsystemmajrelease}/${::architecture}/",
    gpgcheck => '0',
    enabled  => '1',
  }
}
