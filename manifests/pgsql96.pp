#
# Class: repos::pgsql96
# Purpose: Define the pgsql96 repo for CentOS.
#
class repos::pgsql96 {
  yumrepo { "postgres-96-el${::operatingsystemmajrelease}-${::architecture}":
    descr    => "PostgreSQL 9.6 - EL${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/postgres/9.6/rhel-${::operatingsystemmajrelease}-${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-PGDG-96",
  }
}
