#
# Class: repos::elastic
# Purpose: Define the Elastic repository.
#
class repos::elastic {
  yum::repo { 'elastic-centos':
    descr    => 'Elastic CentOS',
    baseurl  => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/repos/elasticsearch/2.x/centos",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "${profile::pulp_client::server_protocol}://${profile::pulp_client::server_name}/pulp/${profile::pulp_client::gpg_uri}/GPG-KEY-elasticsearch",
  }
}
