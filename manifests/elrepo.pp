#
# Class: repos::elrepo
# Purpose: Define the ElRepo repo for CentOS.
#
class repos::elrepo {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-elrepo":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - ElRepo",
    baseurl  => "https://pulp.lark-it.com/pulp/repos/elrepo/el${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/RPM-GPG-KEY-elrepo.org',
  }
}
