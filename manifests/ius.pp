#
# Class: repos::ius
# Purpose: Define the IUS repo for CentOS.
#
class repos::ius {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-ius":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - IUS",
    baseurl  => "https://pulp.lark-it.com/pulp/repos/ius/stable/CentOS/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/IUS-COMMUNITY-GPG-KEY',
  }
}
