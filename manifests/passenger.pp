#
# Class: repos::passenger
# Purpose: Define the repo for pulp
#
class repos::passenger {
  yumrepo { "passenger-centos${::operatingsystemmajrelease}-${::architecture}":
    descr    => "Foreman CentOS ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/passenger/el${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '0', # Yikes!
    enabled  => '1',
  }
}
