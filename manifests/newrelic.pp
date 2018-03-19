#
# Class: repos::newrelic
# Purpose: Define the NewRelic Stable repo for CentOS.
#
class repos::newrelic {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-newrelic":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - NewRelic",
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/newrelic/el5",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/RPM-GPG-KEY-NewRelic",
  }
}
