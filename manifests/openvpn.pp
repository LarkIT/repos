#
# Class: repos::pulp2
# Purpose: Define the repo for pulp
#
class repos::openvpn {
#  yumrepo { 'openvpn-as':
#    descr    => 'OpenVPN Access Server',
#    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/openvpn/el${::operatingsystemmajrelease}/${::architecture}/",
#    gpgcheck => '0',
#    enabled  => '1',
#  }
}
