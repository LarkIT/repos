#
# Class: repos::elrepo
# Purpose: Define the ElRepo repo for CentOS.
#
class repos::elrepo {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-elrepo":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - ElRepo",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/elrepo/el${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => '${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/static/RPM-GPG-KEY-elrepo.org',
  }
}
