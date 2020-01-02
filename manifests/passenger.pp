#
# Class: repos::passenger
# Purpose: Define the repo for pulp
#
class repos::passenger {

  $server_name     = lookup('profile::pulp_client::server_name', String, 'first', 'pulp.lark-it.com')
  $server_protocol = lookup('profile::pulp_client::server_protocol', String, 'first', 'http')

 #if lookup('profile::pulp_client::rel_slash', Boolean, 'first', true) {
  #$baseurl = "$server_protocol://$server_name/pulp/repos/passenger/el/${::operatingsystemmajrelease}/${::architecture}"
 #} else {
  $baseurl = "$server_protocol://$server_name/pulp/repos/passenger/el${::operatingsystemmajrelease}/${::architecture}"
 #}

  yumrepo { "passenger-centos${::operatingsystemmajrelease}-${::architecture}":
    descr    => "Phusion Passenger CentOS ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => $baseurl,
    gpgcheck => '0', # Yikes!
    enabled  => '1',
  }
}
