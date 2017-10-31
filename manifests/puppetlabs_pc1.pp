#
# Class: repos::puppetlabs_pc1
# Purpose: Define the puppet repo.
#
class repos::puppetlabs_pc1 {
  yumrepo { "puppetlabs-pc1-${::operatingsystemmajrelease}-${::architecture}":
    descr    => 'Puppet Labs PC1 Repository el 7 - $basearch',
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/puppetlabs/el/${::operatingsystemmajrelease}/PC1/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => [
      "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-puppetlabs-PC1",          "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-puppet-PC1",
    ]
  }
}
