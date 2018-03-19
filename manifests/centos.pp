#
# Class: repos::centos
# Purpose: Define the OS and updates repo for CentOS.
#
# NOTE: these baseurl's are http because of a cyclic dependency on installing ca-certificates package and untrusted CA's
#
class repos::centos {
  yumrepo { "centos-${::operatingsystemmajrelease}-${::architecture}-base":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Base",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/centos/${::operatingsystemmajrelease}/os/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
  }

  yumrepo { "centos-${::operatingsystemmajrelease}-${::architecture}-updates":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Updates",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/centos/${::operatingsystemmajrelease}/updates/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
  }
}
