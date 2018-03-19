#
# Class: repos::pulp2
# Purpose: Define the repo for pulp
#
class repos::pulp2 {
  yumrepo { 'pulp2-stable':
    descr    => 'Pulp 2 Production Releases',
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/pulp/stable/2/${::operatingsystemmajrelease}/${::architecture}/",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-pulp-2",
  }
}
