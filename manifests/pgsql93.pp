#
# Class: repos::pgsql93
# Purpose: Define the pgsql93 repo for CentOS.
#
class repos::pgsql93 {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-pgsql93":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - pgsql93",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/postgresql/9.3/rhel-${::operatingsystemmajrelease}-${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => '${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/RPM-GPG-KEY-PGDG-92',
  }
}
