#
# Class: repos::foreman
# Purpose: Define the Foreman repo for CentOS.
#
class repos::foreman {
  yumrepo { "foreman-centos${::operatingsystemmajrelease}-${::architecture}":
    descr    => "Foreman CentOS ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/foreman/releases/1.12/el${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-foreman-1.12",
  }

  yumrepo { "foreman-plugins-centos${::operatingsystemmajrelease}-${::architecture}":
    descr    => "Foreman Plugins CentOS ${::operatingsystemmajrelease} ${::architecture}",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/foreman/releases/1.12/el${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-foreman-1.12",
  }
}
