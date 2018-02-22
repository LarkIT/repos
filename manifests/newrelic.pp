#
# Class: repos::newrelic
# Purpose: Define the NewRelic Stable repo for CentOS.
#
class repos::newrelic {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-newrelic":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - NewRelic",
    baseurl  => 'https://pulp.lark-it.com/pulp/repos/newrelic/el5',
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/RPM-GPG-KEY-NewRelic',
  }
}
