#
# Class: repos::elastic
# Purpose: Define the Elastic repository.
#
class repos::elastic {
  yum::repo { 'elastic-centos':
    descr    => 'Elastic CentOS',
    baseurl  => 'https://pulp.lark-it.com/pulp/repos/elasticsearch/2.x/centos',
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => 'https://pulp.lark-it.com/pulp/static/GPG-KEY-elasticsearch',
  }
}
