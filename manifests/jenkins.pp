#
# Class: repos::jenkins
# Purpose: Define the Jenkins Stable repo for CentOS.
#
class repos::jenkins {

  $server_name     = lookup('profile::pulp_client::server_name', String, 'first', 'pulp.lark-it.com')
  $server_protocol = lookup('profile::pulp_client::server_protocol', String, 'first', 'http')
  $gpg_uri = lookup('profile::pulp_client::gpg_uri', String, 'first', 'static')

  yum::repo { "centos${::operatingsystemmajrelease}-${::architecture}-jenkins":
    descr    => "CentOS ${::operatingsystemmajrelease} ${::architecture} - Jenkins",
    baseurl  => "$server_protocol://$server_name/pulp/repos/jenkins/",
    gpgcheck => '1',
    enabled  => '1',
    gpgkey   => "$server_protocol://$server_name/pulp/$gpg_uri/jenkins-ci.org.key",
  }
}
