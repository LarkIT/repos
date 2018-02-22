#
# Class: repos::sensu
# Purpose: Define the repo for sensu
#
class repos::sensu {
  yum::repo { 'sensu-official':
    descr    => 'Sensu',
    baseurl  => "https://pulp.lark-it.com/pulp/repos/sensu/${::architecture}",
    gpgcheck => '0',
    enabled  => '1',
  }
}
