#
# Class: repos::pgsql95
# Purpose: Define the pgsql95 repo for CentOS.
#
class repos::pgsql95 {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-pgsql95":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - pgsql95",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/postgres/9.5/rhel-${::operatingsystemmajrelease}-${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-PGDG-92",
  }
}
