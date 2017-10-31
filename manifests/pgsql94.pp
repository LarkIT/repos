#
# Class: repos::pgsql94
# Purpose: Define the pgsql94 repo for CentOS.
#
class repos::pgsql94 {
  yumrepo { "postgres-94-el${::operatingsystemmajrelease}-${::architecture}":
    descr    => "PostgreSQL 9.4 - EL ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/postgres/9.4/rhel-${::operatingsystemmajrelease}-${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-PGDG-94",
  }
}
