#
# Class: repos::passenger
# Purpose: Define the repo for pulp
#
class repos::passenger {

 if lookup('profile::pulp_client::rel_slash', Boolean, 'first', true) {
  $baseurl = "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/passenger/el/${::operatingsystemmajrelease}/${::architecture}"
 } else {
  $baseurl = "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/passenger/el${::operatingsystemmajrelease}/${::architecture}"
 }

  yumrepo { "passenger-centos${::operatingsystemmajrelease}-${::architecture}":
    descr    => "Phusion Passenger CentOS ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => $baseurl,
    gpgcheck => '0', # Yikes!
    enabled  => '1',
  }
}
