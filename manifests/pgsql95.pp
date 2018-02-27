#
# Class: repos::pgsql95
# Purpose: Define the pgsql95 repo for CentOS.
#
class repos::pgsql95 {
  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-pgsql95":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - pgsql95",
    baseurl  => "https://pulp.lark-it.com/pulp/repos/postgresql/9.5/rhel-${::operatingsystemmajrelease}-${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/RPM-GPG-KEY-PGDG-92',
  }
}
