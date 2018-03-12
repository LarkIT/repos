#
# Class: repos::openvpn_as
# Purpose: Define the repo for openvpn_as
#
class repos::openvpn_as {
  yumrepo { 'openvpn-as':
    descr    => 'OpenVPN Access Server',
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/openvpn/el${::operatingsystemmajrelease}/${::architecture}/",
    gpgcheck => '0',
    enabled  => '1',
  }
}
