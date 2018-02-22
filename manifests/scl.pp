#
# Class: repos::scl
# Purpose: Define the SCL (Software Collections) repo for CentOS.
#
class repos::scl {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-scl":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - SCL",
    baseurl  => "https://pulp.lark-it.com/pulp/repos/centos/${::operatingsystemmajrelease}/scl/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "https://pulp.lark-it.com/pulp/static/RPM-GPG-KEY-CentOS-Testing-${::operatingsystemmajrelease}",
  }
}
