#
# Class: repos::ius_archive
# Purpose: Define the IUS Archive repo for CentOS.
#
class repos::ius_archive {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-ius-archive":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - IUS Archive",
    baseurl  => "https://pulp.lark-it.com/pulp/repos/ius/archive/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/IUS-COMMUNITY-GPG-KEY',
  }
}
