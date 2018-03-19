#
# Class: repos::shibboleth
# Purpose: Define the shibboleth repo for CentOS.
#
class repos::shibboleth {
  yumrepo { "shibboleth-centos${::operatingsystemmajrelease}-${::architecture}":
    descr    => "Shibboleth CentOS ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/shibboleth/el${::operatingsystemmajrelease}/",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-Shibboleth",
  }
}
