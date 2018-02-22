#
# Class: repos::larkit
# Purpose: Define the repo for larkit
#
class repos::larkit {
  yum::repo { 'larkit':
    descr    => 'LarkIT',
    baseurl  => "https://pulp.lark-it.com/pulp/repos/larkit/${::operatingsystemmajrelease}/${::architecture}",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/LARK-RPM-GPG-KEY',
  }
}
